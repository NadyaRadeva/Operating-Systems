s0600454@astero:~$ ps -eo pid,ppid --no-headers | awk '{child[$2]++; parent[$1]=$2} END {for (p in parent) if (child[p] > child[parent[p]]) print p}'
