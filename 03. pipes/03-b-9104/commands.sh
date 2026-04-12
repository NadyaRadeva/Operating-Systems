s0600454@astero:~$ ls ~/songs | awk -F'[()]' '{split($2,a,", "); print a[2], a[1]}' | sort
