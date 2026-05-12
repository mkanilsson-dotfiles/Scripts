#!/usr/bin/bash

set -ex

rsync -uvr "$HOME/Games/epic-games-store/drive_c/ProgramData/Epic/EpicGamesLauncher/Data/Update/Install/" "$HOME/Games/epic-games-store/drive_c/Program Files (x86)/Epic Games/Launcher/"
