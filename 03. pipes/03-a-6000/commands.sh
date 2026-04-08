s0600454@astero:~$ awk 'END {print NR}' ~/emp.data
s0600454@astero:~$ awk 'NR==3 {print}' ~/emp.data
s0600454@astero:~$ awk '{print $NF}' ~/emp.data
s0600454@astero:~$ awk 'END {print $NF}' ~/emp.data
s0600454@astero:~$ awk 'NF>4 {print}' ~/emp.data
s0600454@astero:~$ awk '$NF > 4' ~/emp.data
s0600454@astero:~$ awk '{sum += NF} END {print sum}' ~/emp.data
s0600454@astero:~$ awk '/Beth/ {count++} END {print count}' ~/emp.data
s0600454@astero:~$ awk 'NR==1 || $3>max {max=$3; line=$0} END {print max, "->", line}' ~/emp.data
s0600454@astero:~$ awk 'NF > 0' ~/emp.data
s0600454@astero:~$ awk 'length($0) > 17' ~/emp.data
s0600454@astero:~$ awk '{print NF, $0}' ~/emp.data
s0600454@astero:~$ awk '{print $2, $1}' ~/emp.data
s0600454@astero:~$ awk '{t=$1; $1=$2; $2=t; print}' ~/emp.data
s0600454@astero:~$ awk '{ $1=NR; print }' ~/emp.data
s0600454@astero:~$ awk '{$2=""; print $0}' ~/emp.data
s0600454@astero:~$ awk '{sum = $2 + $3; print sum}' ~/emp.data
s0600454@astero:~$ awk '{print $2 + $3}' ~/emp.data
