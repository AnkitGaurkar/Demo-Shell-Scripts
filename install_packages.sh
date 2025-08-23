#!/bin/bash
#
#
#
<<info
This script will install the packages that you pass in the arguments

eg.   ./install_packages.sh nginx
       ./install_packages.sh docker
       ./install_packages.sh unzip
info


echo "Installing $1"

sudo apt-get update > /dev/null 

sudo apt-get install $1 -y > /dev/null

echo "Installing Completed"


