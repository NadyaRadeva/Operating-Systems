#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "Script must be run as root"
    exit 1
fi

while IFS=: read -r user pass uid gid info home shell
do
    if [ ! -d "$home" ]; then
        echo "User $user has missing home directory: $home"

    elif [ ! -w "$home" ]; then
        echo "User $user cannot write in home directory: $home"
    fi

done < /etc/passwd
