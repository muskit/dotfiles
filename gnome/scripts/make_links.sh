#!/bin/bash

DOTS_FOLDER=$(pwd)/gnome/dots

mkdir -p $HOME/.config/environment.d/
ln -si $DOTS_FOLDER/envvars.conf $HOME/.config/environment.d/envvars.conf