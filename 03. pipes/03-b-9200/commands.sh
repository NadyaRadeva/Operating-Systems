s0600454@astero:~$ find /etc -type f -printf "%s %p\n" 2>/dev/null | sort -nr | head -1
s0600454@astero:~$ stat -c "%A" /etc/ssh/moduli
