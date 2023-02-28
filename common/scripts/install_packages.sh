#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    exit
fi

######### RUNNING AS ROOT #########

pacman --noconfirm -Syu

# general applications
pacman --noconfirm -S libreoffice-fresh discord vlc obsidian spotify-launcher nextcloud-client
# system-related packages
pacman --noconfirm -S libpamac-flatpak-plugin fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-unikey fcitx5-configtool guake tmux
# development packages
pacman --noconfirm -S vim code python-pip github-cli
# audio (REQUIRES INTERACTION!)
pacman -S manjaro-pipewire pipewire-pulse pipewire-alsa easyeffects calf lsp-plugins

pamac install --no-confirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui indicator-stickynotes