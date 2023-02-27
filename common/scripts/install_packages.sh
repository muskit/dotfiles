#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    exit
fi

######### RUNNING AS ROOT #########

pacman --noconfirm -Syu

pacman --noconfirm -S libreoffice-fresh discord vlc obsidian libpamac-flatpak-plugin fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-unikey fcitc5-configtool guake vim code python-pip
pamac install --no-confirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui