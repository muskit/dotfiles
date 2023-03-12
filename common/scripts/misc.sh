#!/bin/bash

echo "Setting Git Variables..."
git config --global user.email "15199219+muskit@users.noreply.github.com"
git config --global user.name "muskit"
git config --global core.editor vim

echo "Installing EasyEffects presets (INTERACTIVE)..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/install.sh)"
