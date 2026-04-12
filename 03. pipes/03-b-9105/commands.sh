s0600454@astero:~$ ls ~/songs | awk -F' - ' '$1=="Beatles" || $1=="Pink" {print $2}' | awk -F' \\(' '{print $1}'
