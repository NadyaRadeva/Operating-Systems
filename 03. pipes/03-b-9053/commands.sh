s0600454@astero:~$ awk -F, 'NR>1 {if($4>max) {max=$4; country=$1}} END {print country}' population.csv
