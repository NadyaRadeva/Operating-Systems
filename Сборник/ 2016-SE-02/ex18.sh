#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <rss_limit>"
    exit 1
fi

LIMIT="$1"

if ! [[ "$LIMIT" =~ ^[0-9]+$ ]]; then
    echo "Argument must be a positive number"
    exit 1
fi

if [ "$(id -u)" -ne 0 ]; then
    echo "Script must be executed as root"
    exit 1
fi

tmpfile=$(mktemp)

ps -e -o user=,pid=,rss= | while read user pid rss
do
    echo "$user $rss"
done | awk '
{
    sum[$1] += $2
}
END {
    for (u in sum)
        print u, sum[u]
}
' > "$tmpfile"

cat "$tmpfile"

while read user totalrss
do
    if [ "$totalrss" -gt "$LIMIT" ]; then

        echo "User $user exceeds limit with RSS=$totalrss"

        pid=$(ps -u "$user" -o pid=,rss= | \
            sort -k2 -nr | \
            head -n 1 | \
            awk '{print $1}')

        if [ -n "$pid" ]; then
            echo "Sending SIGTERM to PID $pid"
            kill -TERM "$pid"

            sleep 2

            if ps -p "$pid" > /dev/null 2>&1; then
                echo "Sending SIGKILL to PID $pid"
                kill -KILL "$pid"
            fi
        fi
    fi

done < "$tmpfile"

rm -f "$tmpfile"
