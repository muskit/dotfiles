#!/bin/bash

# TODO: desktop environment argument

SCRIPT_DIR=$(dirname $(realpath "$0"))

echo "<<<<<<<<<< [ muskit's Arch System Initializer ] >>>>>>>>>>"

echo "------------ Installing Packages ------------"
$SCRIPT_DIR/common/scripts/install_packages.sh

echo "------ Creating links to config files ------"
$SCRIPT_DIR/common/scripts/make_links.sh

echo "------------ Creating autostarts ------------"
$SCRIPT_DIR/common/scripts/create_autostarts.sh

echo "-------------- Running misc.sh --------------"
$SCRIPT_DIR/common/scripts/misc.sh

echo "---------- ARCH SETUP COMPLETE ----------"
cat $(dirname $(realpath "$0"))/postsetup_notes.txt