#!/usr/bin/bash

# From https://git.dec05eba.com/gpu-screen-recorder/tree/scripts/save-replay.sh 

killall -SIGUSR1 gpu-screen-recorder && sleep 0.5 && hyprctl notify -1 5000 "rgb(458588)" "Replay saved"
