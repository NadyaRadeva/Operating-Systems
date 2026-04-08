s0600454@astero:~$ find ~ -type f -printf '%T@ %p\n' | sort -nr | head -10 | cut -d' ' -f2-
