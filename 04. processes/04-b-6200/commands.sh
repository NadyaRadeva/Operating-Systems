s0600454@astero:~$ comm -23 <(ps -eo user= | sort -u) <(who | awk '{print $1}' | sort -u)
