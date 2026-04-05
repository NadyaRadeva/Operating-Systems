s0600454@astero:~$ grep "^$(whoami):" /etc/passwd
s0600454@astero:~$ grep -B 2 "^$(whoami):" /etc/passwd
s0600454@astero:~$ grep -B 2 -A 3 "^$(whoami):" /etc/passwd
s0600454@astero:~$ sed -n "$(( $(grep -n "^$(whoami):" /etc/passwd | cut -d: -f1) - 2 ))p" /etc/passwd
