s0600454@astero:~$ awk -F: '{split($5,a," "); if(length(a[2])>6) print a[1], a[2]}' /etc/passwd
