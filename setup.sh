#!/bin/bash

# TODO: desktop environment argument

SCRIPT_DIR=$(dirname $(realpath "$0"))/scripts

echo "<<<<<<<<<< [ muskit's Manjaro System Initializer ] >>>>>>>>>>"

echo "------------ Installing Packages ------------"
$SCRIPT_DIR/common/scripts/install_packages.sh

echo "------ Creating links to config files ------"
$SCRIPT_DIR/common/scripts/make_links.sh

echo "------------ Creating autostarts ------------"
$SCRIPT_DIR/common/scripts/create_autostarts.sh

echo "-------------- Running misc.sh --------------"
$SCRIPT_DIR/common/scripts/misc.sh

echo "---------- MANJARO SETUP COMPLETE ----------"
cat $(dirname $(realpath "$0"))/postsetup_notes.txt