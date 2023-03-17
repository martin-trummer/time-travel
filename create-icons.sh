#!/usr/bin/env bash
set -eu

create_logo() {
    size=$1
    filename=$2

    convert -background none "$ORIGINAL" -resize "${size}x${size}" "$filename"
    optipng "$filename"
}

ORIGINAL=icon.svg

SIZES="16 32 48 128"
for s in $SIZES
do
    create_logo "$s" "images/icon-${s}.png"
done