s0600454@astero:~$ find . -maxdepth 1 -type f -printf '%n %f\n' | sort -nr | head -n 5 | awk '{print $2}'
