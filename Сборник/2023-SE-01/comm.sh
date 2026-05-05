s0600454@astero:~$ find / -type f -user "$(whoami)" -regex '.*\.blend[0-9]+$' 2>/dev/null
