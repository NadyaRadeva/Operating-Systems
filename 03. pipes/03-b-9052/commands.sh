s0600454@astero:~$ awk -F, 'NR>1 && $1=="Bulgaria" {if($4>max){max=$4; year=$3}} END {print year}' population.csv
