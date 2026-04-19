s0600454@astero: touch philip-j-fry.txt
s0600454@astero:~$ cat philip-j-fry.txt
123abv123
123zz123
MMU_2.4
s0600454@astero:~$ grep -E '[02468]' philip-j-fry.txt | grep -v '[a-w]' | wc -l
