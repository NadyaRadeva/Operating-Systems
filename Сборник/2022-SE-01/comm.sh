s0600454@astero:~$ find ~ -maxdepth 1 -type f -user "$(whoami)" -exec chmod 664 {} \; > /dev/null 2>&1
