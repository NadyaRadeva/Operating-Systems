s0600454@astero:~$ mygroup=$(id -gn)
awk -F: -v g="$mygroup" '{
    if ($1==g)
        print "Hello, " $1 " - I am here!"
    else
        print "Hello, " $1
}' /etc/group
