s0600454@astero:~$ ps -eo group,rss --no-headers | awk '$1=="root" {sum+=$2} END {print sum}'
