#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    exit
fi

######### RUNNING AS ROOT #########

echo Enabling AUR in /etc/pamac.conf...
sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf

pacman --noconfirm -Syu

# general applications
pacman --noconfirm -S libreoffice-fresh discord vlc obsidian spotify-launcher nextcloud-client
# system-related packages
pacman --noconfirm -S libpamac-flatpak-plugin fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-unikey fcitx5-configtool tmux guake
# development packages
pacman --noconfirm -S vim python-pip github-cli
# audio
yes | pacman -S manjaro-pipewire pipewire-pulse pipewire-alsa easyeffects calf lsp-plugins

pamac install --no-confirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui indicator-stickynotes visual-studio-code-bin ocs-url
