#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    exit
fi

######### RUNNING AS ROOT #########

pacman --noconfirm -S plasma-wayland-session latte-dock
pamac install --no-confirm koi