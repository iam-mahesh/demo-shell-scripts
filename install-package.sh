#!/bin/bash

<<info

this script will install package 
that you pass in the arguments

e.g, ./install-package.sh nginx
./install-package.sh docker.io
./install-package.sh unzip

info

echo "installing... $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "installation completed...."
