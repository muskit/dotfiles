#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    exit
fi

######### RUNNING AS ROOT #########

#echo Enabling AUR in /etc/pamac.conf...
#sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf

pacman --noconfirm -Syu

# general applications
pacman --noconfirm -S libreoffice-fresh discord vlc obsidian spotify-launcher nextcloud-client peek
# system-related packages
pacman --noconfirm -S libpamac-flatpak-plugin fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-unikey fcitx5-configtool tmux yay
# development packages
pacman --noconfirm -S vim python-pip github-cli patch base-devel
# audio
# use if in manjaro:
#pacman -S manjaro-pipewire pipewire-pulse pipewire-alsa easyeffects calf lsp-plugins
# otherwise if pipewire is already installed (like on EndeavourOS)
pacman -S easyeffects calf lsp-plugins

#pamac install --no-confirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui indicator-stickynotes visual-studio-code-bin ocs-url spotblock-git ulauncher
yay --sudoloop --noconfirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui indicator-stickynotes visual-studio-code-bin ocs-url spotblock-git ulauncher muon

