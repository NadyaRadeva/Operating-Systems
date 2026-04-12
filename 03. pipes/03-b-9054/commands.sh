s0600454@astero:~$ awk -F, 'NR>1 && $3==1969' population.csv | sort -t, -k4,4nr | sed -n '42p'
