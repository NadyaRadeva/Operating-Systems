s0600454@astero:~$ ls ~/songs \ | awk -F' - ' '{print $1}' \ | sort -u \ | tr -d ' ' \ | xargs mkdir -p
