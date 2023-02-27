#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    exit
fi

######### RUNNING AS ROOT #########

pacman --noconfirm -S patch gnome-menus
pamac install --no-confirm extension-manager
