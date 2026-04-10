s0600454@astero:~$ awk -F: '{print $4}' /etc/passwd | sort | uniq -c | sort -nr | head -5 \ | awk '{print $2}' \ | xargs -I{} awk -F: -v gid={} '$3==gid {print $1}' /etc/group
