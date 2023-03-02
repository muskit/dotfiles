#!/bin/bash

DOTS_FOLDER=$(dirname $(realpath "$0"))/../dots

ln -si $DOTS_FOLDER/.vimrc $HOME/.vimrc

ln -si $DOTS_FOLDER/.config/fcitx5 $HOME/.config/fcitx5
ln -si $DOTS_FOLDER/.config/environment.d $HOME/.config/environment.d