s0600454@astero:~$ find /usr -type f -name '*.sh' 2>/dev/null \ | xargs -r head -n 1 2>/dev/null \ | grep '^#!' \ | awk '{print $1}' \ | sort \ | uniq -c \ | sort -nr \ | head
