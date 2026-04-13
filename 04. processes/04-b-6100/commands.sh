s0600454@astero:~$ ps -eo user,cmd --no-headers | grep '^.* vim' | awk '{count[$1]++} END {for (u in count) if (count[u]>=2) print u}'
