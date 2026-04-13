s0600454@astero:~$ ps -G root -o rss= | awk '{sum+=$1; count++} END {if (count>0) print sum/count; else print 0}'
