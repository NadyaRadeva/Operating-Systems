s0600454@astero:~$ awk -F: -v user="$USER" '$1==user {print $4}' /etc/passwd
