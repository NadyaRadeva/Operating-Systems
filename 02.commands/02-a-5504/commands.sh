s0600454@astero:~$ find /tmp -type f -group $(id -gn) \( -perm -g=w -o -perm -o=w \)
