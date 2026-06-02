#!/usr/bin/bash

set -ex

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git /tmp/paru
cd /tmp/paru
makepkg -si
cd -

mkdir -p $HOME/.config/dotman/
cp config.toml $HOME/.config/dotman/

mkdir -p $HOME/Documents/dev/rice
git clone git@github.com:mkanilsson-dotfiles/main.git $HOME/Documents/dev/rice/dotmain-main

paru -S kitty hyprland firefox pavucontrol patchance zsh firefox \
    discord waybar swaync nvim tree-sitter tree-sitter-cli ardour \
    neural-amp-modeler-ui-lv2 rofi guitarix cargo bat ripgrep \
    zathura zathura-pdf-poppler mpv luarocks lua51 exa wasm-tools \
    fnm gnome-tweaks selectdefaultapplication ttf-jetbrains-mono \
    swaybg linux-headers dbgate gtklock ttf-jetbrains-mono-nerd \
    arch-install-scripts networkmanager-l2tp strongswan



# Disks
# Remove /dev/sdc1 (931.5G)
# Make this /mnt/videos, copy from /dev/sdd1
#
# Then
# Remove /dev/sdd1 (417.2G) *AFTER COPY*
# Remove /dev/sdd2 (515.9G)
# Remove /dev/sdd3 (206.9G)
# Remove /dev/sdd4 (723G)
# Make 200GB /mnt/Nextcloud
# Make 200GB /mnt/Music
# Make rest /mnt/Games/hdd
#
# Mount /dev/sdb1 (238.5G) /mnt/programming
#
# /dev/sda1 (111.8G)
# Mount new to /dev/Games/ssd
#
# Nuke /dev/nvme0n1
# Make 32G swap
# Make 500MB /efi
# Make 10G /boot
# Make rest /
