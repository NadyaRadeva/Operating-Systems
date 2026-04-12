s0600454@astero:~$ awk '{for(i=NF;i>=1;i--) printf "%s ", $i; print ""}' emp.dat
