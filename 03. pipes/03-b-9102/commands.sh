s0600454@astero:~$ find ~/songs -type f -name "*.ogg" | awk -F' - | \\(' '{print $2}'
