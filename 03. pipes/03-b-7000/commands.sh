s0600454@astero:~$ find /usr/include -type f \( -name '*.c' -o -name '*.h' \) | wc -l
s0600454@astero:~$ find /usr/include -type f \( -name '*.c' -o -name '*.h' \) -exec cat {} + | wc -l
