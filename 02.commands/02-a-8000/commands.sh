s0600454@astero:~$ mkdir -p ~/myetc && find /etc -type f -perm -o=r -print0 | xargs -0 cp -t ~/myetc/
