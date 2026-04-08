s0600454@astero:~$ tr '[:upper:]' '[:lower:]' < /etc/services \ | tr -c '[:alpha:]' '\n' \ | grep -v '^$' \ | sort \ | uniq -c \ | sort -nr \ | head -10
