#!/bin/bash

# TODO: desktop environment argument

echo "<<<<<<<<<< [ muskit's Manjaro System Initializer ] >>>>>>>>>>"

echo "------------ Installing Packages ------------"
./common/scripts/install_packages.sh

echo "------ Creating links to config files ------"
./common/scripts/make_links.sh

echo "------------ Creating autostarts ------------"
./common/scripts/create_autostarts.sh

echo "-------------- Running misc.sh --------------"
./common/scripts/misc.sh

echo Finished setting up system.