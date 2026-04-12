s0600454@astero:~$ awk -F, '$3==2008 {sum+=$4} END {print sum}' population.csv
s0600454@astero:~$ awk -F, '$3==2016 {sum+=$4} END {print sum}' population.csv
