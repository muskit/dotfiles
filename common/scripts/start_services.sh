#!/bin/bash

if [[ "$EUID" -ne 0 ]]
then 
    echo "Requesting root..."
    sudo "$0" "$@"
    exit
fi

# systemctl enable
# systemctl start