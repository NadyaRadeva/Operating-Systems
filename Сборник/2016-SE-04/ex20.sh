#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 low high"
    exit 1
fi

low=$1
high=$2

mkdir -p a b c

for file in *
do
    # само обикновени файлове
    if [ ! -f "$file" ]; then
        continue
    fi

    lines=$(wc -l < "$file")

    if [ "$lines" -lt "$low" ]; then
        mv "$file" a/

    elif [ "$lines" -ge "$low" ] && [ "$lines" -le "$high" ]; then
        mv "$file" b/

    else
        mv "$file" c/
    fi

done
