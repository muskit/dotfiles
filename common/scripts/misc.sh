#!/bin/bash

echo "Restoring guake preferences..."
guake --restore-preferences $(dirname $0)/../dots/guake_preferences

echo "Setting Git Author Variables..."
git config --global user.email "15199219+muskit@users.noreply.github.com"
git config --global user.name "muskit"

echo "Installing EasyEffects presets (INTERACTIVE)..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/JackHack96/PulseEffects-Presets/master/install.sh)"