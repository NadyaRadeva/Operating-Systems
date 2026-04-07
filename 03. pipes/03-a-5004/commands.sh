s0600454@astero:~$ awk -F: '{split($5,a," "); if(!(length(a[2])>7)) print $0}' /etc/passwd
