s0600454@astero:~$ type=$(tail -n +2 planets.txt | sort -t';' -k3,3n | tail -n 1 | cut -d';' -f2)

tail -n +2 planets.txt \
| grep ";$type;" \
| sort -t';' -k3,3n \
| head -n 1 \
| cut -d';' -f1,4 \
| tr ';' '\t'
