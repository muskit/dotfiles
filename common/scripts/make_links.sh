#!/bin/bash

DOTS_FOLDER=$(dirname $(realpath "$0"))/../dots

ln -si $DOTS_FOLDER/.vimrc $HOME/.vimrc

mkdir -p $HOME/.config/fcitx5
ln -si $DOTS_FOLDER/fcitx5_config $HOME/.config/fcitx5/config
ln -si $DOTS_FOLDER/fcitx5_profile $HOME/.config/fcitx5/profile
