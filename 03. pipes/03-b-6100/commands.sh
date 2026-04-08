s0600454@astero:~$ sed -n '28,46p' /etc/passwd | cut -d: -f3 | rev | cut -c1 | rev
