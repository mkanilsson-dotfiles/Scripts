#!/usr/bin/bash

set -e

quantum=$(echo -e "128\n256\n512\n1024\n2048\n4096" | rofi -dmenu -only-match -window-title "Select buffer size:")
echo "$quantum"

pw-metadata -n settings 0 clock.force-quantum "$quantum"
notify-send "Buffer size" "has been set to $quantum"
