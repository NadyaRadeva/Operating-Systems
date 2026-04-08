s0600454@astero:~$ awk '/#/ {count++} END {print count}' /etc/services
s0600454@astero:~$ grep -c '#' /etc/services
