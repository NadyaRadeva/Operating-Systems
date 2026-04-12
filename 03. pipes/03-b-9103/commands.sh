s0600454@astero:~$ ls ~/songs \ | awk -F' - | \\(' '{print $2}' \ | tr '[:upper:]' '[:lower:]' \ | tr ' ' '_' \ | sort
