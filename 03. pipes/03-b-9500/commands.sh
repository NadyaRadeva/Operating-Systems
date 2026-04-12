s0600454@astero:~$ cp /home/students/s0600450/exercises/03.pipes/ssa-input.txt ~/
s0600454@astero:~$ ls ~/ssa-input.txt
s0600454@astero:~$ awk '/^Array /{a=$2} /physicaldrive/{d=$2} /Current/{c=$NF} /Maximum/{print a"-"d,c,$NF}' ssa-input.txt
