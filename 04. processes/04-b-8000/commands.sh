s0600454@astero:~$ ps -eo tty,pid,comm --no-headers | awk '$1=="?" {print $3}' | sort -u
