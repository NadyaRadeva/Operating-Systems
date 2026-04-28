s0600454@astero:~$ find /home/pesho -type f -links +1 -printf '%T@ %i\n' 2>/dev/null | sort -nr | head -n 1 | awk '{print $2}'
