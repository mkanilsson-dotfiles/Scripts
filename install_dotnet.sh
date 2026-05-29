#!/usr/bin/bash

set -e

sudo pacman -S "dotnet-runtime-$1" "aspnet-runtime-$1" "aspnet-targeting-pack-$1" "dotnet-sdk-$1"
