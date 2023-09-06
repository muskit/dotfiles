#!/bin/sh

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root for pacman..."
    sudo "$0" "$@"
    yay -S --sudoloop --noconfirm koi
else # running as root
	pacman --noconfirm -S plasma-wayland-session
	exit
fi

