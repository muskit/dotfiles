#!/bin/sh

SCRIPT_DIR=$(dirname $(realpath "$0"))/scripts

echo "<<<<<<<<<< [ Plasma Scripts ] >>>>>>>>>>"

echo "------------ Installing Packages ------------"
$SCRIPT_DIR/install_packages.sh

echo "------ Creating links to configs ------"
$SCRIPT_DIR/make_links.sh

echo "------------ Creating autostarts ------------"
$SCRIPT_DIR/create_autostarts.sh

# echo "-------------- Running misc.sh --------------"
# $SCRIPT_DIR/misc.sh

echo "-------- PLASMA SETUP COMPLETE --------"
cat $(dirname $(realpath "$0"))/postsetup_notes.txt