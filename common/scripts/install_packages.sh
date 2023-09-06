#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
else # we are root
    # run if manjaro
    #echo Enabling AUR in /etc/pamac.conf...
    #sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf

    pacman --noconfirm -Syyu
    pacman --noconfirm -S yay

    # general applications
    pacman --noconfirm -S libreoffice-fresh discord vlc obsidian spotify-launcher nextcloud-client peek
    # system-related packages
    pacman --noconfirm -S fcitx5-qt fcitx5-gtk fcitx5-mozc fcitx5-unikey fcitx5-configtool tmux yay
    # development packages
    pacman --noconfirm -S vim python-pip github-cli patch base-devel
    # audio
    pacman --noconfirm -S easyeffects calf lsp-plugins

    # run if in manjaro:
    #pacman -S libpamac-flatpak-plugin manjaro-pipewire pipewire-pulse pipewire-alsa easyeffects calf lsp-plugins
    exit
fi

#pamac install --no-confirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui indicator-stickynotes visual-studio-code-bin ocs-url spotblock-git ulauncher
yay -S --sudoloop --noconfirm noto-fonts-emoji-blob onedrive-abraunegg onedrivegui indicator-stickynotes visual-studio-code-bin ocs-url spotblock-git ulauncher muon

