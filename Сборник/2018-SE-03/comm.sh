s0600454@astero:~$ cut -d: -f1,3,5,6 /etc/passwd \
| sort -t: -k2,2n \
| sed -n '201p' \
| cut -d: -f4 \
| cut -d/ -f3

s0600454@astero:~$ awk -F: -v spec="$(cut -d: -f1,3,5,6 /etc/passwd \
| sort -t: -k2,2n \
| sed -n '201p' \
| cut -d: -f4 \
| cut -d/ -f3)" '
$6 ~ "/home/"spec"/" {
    split($5,a,",")
    print a[1], $6
}' /etc/passwd | sort
 /home/students/student
