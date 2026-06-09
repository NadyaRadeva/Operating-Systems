#!/bin/bash

set -euo pipefail

IFS=$'\n\t'

if [[ $# -ne 2 ]]; then
    echo "Invalid amount of params!" 1>&2
    exit 1
fi

SRC="$1"
DST="$2"

if [[ ! -d "$SRC" ]]; then
    echo "SCR directory does not exist!"
    exit
fi

if [[ -e  "$DST" ]]; then
    echo "DST directory does not exist!"
    exit
fi

mkdir -p "$DST/images"

clean() {
    sed -E 's/^[[:space:]]+//; s/[[:space:]]+//; s/[[:space:]]+/ /g'
}

find "$SRC" -type f -name '*.jpg' | while IFS= read -r file; do
    filename="$(basename "$file")"
    base="${filename%.jpg}"

    album="$(echo "$base" | grep -oE '\([^()]+\)' | tail -n 1 | sed 's/[()]//g' | clean)"
    if [[ -z "$album" ]]; then
        album="misc"
    fi

    title="$(echo "$base" | sed -E 's/\([^()]+\)//g' | clean)"

    data="$(date -r "$file" +%Y-%m-%d)"
    hash="$(sha256sum "$file" | cut -c1-16)"

    cp "$file" "$DST/images/$hash.jpg"

    mkdir -p "$DST/by-date/$date/by-album/$album/by-title"
    mkdir -p "$DST/by-date/$date/by-title"
    mkdir -p "$DST/by-album/$album/by-date/$date/by-title"
    mkdir -p "$DST/by-album/$album/by-tile"
    mkdir -p "$DST/by-title"

    ln -sr "$DST/images/$hash.jpg" "$DST/by-date/$date/by-album/$album/by-title/$title.jpg"
    ln -sr "$DST/images/$hash.jpg" "$DST/by-date/$date/by-title/$title.jpg"
    ln -sr "$DST/images/$hash.jpg" "$DST/by-album/$album/by-date/$date/by-title/$title.jpg"
    ln -sr "$DST/images/$hash.jpg" "$DST/by-title/$title.jpg"

   done
