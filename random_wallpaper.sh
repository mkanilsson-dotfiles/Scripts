#!/usr/bin/env bash

TYPE="$1"

if [ -z $TYPE ]; then
    TYPE="irl"
fi

FOLDER="$HOME/Pictures/wallpapers/$TYPE"

FILE="$(ls $FOLDER | shuf | head -n1)"

echo "$FOLDER/$FILE"
