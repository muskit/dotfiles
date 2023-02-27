#!/bin/sh

START_DIR=$HOME/.config/autostart

mkdir -p $START_DIR
cp -i /usr/share/applications/guake.desktop $START_DIR/
cp -i /usr/share/applications/org.fcitx.Fcitx5.desktop $START_DIR/
cp -i /usr/share/applications/onedrivegui.desktop $START_DIR/