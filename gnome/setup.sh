#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath "$0"))/scripts

echo "<<<<<<<<<< [ GNOME Scripts ] >>>>>>>>>>"

echo "------------ Installing Packages ------------"
$SCRIPT_DIR/install_packages.sh

echo "------ Creating links to config files ------"
$SCRIPT_DIR/make_links.sh

# echo "------------ Creating autostarts ------------"
# $SCRIPT_DIR/create_autostarts.sh

# echo "-------------- Running misc.sh --------------"
# $SCRIPT_DIR/misc.sh

echo "-------- GNOME SETUP COMPLETE --------"
cat $(dirname $(realpath "$0"))/postsetup_notes.txt