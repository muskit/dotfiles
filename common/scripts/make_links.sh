#!/bin/bash

DOTS_FOLDER=$(pwd)/common/dots

ln -si $DOTS_FOLDER/.vimrc $HOME/.vimrc
ln -si $DOTS_FOLDER/fcitx5_config $HOME/.config/fcitx5/config
ln -si $DOTS_FOLDER/fcitx5_profile $HOME/.config/fcitx5/profile
