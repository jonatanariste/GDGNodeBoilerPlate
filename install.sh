#!/bin/bash
sudo apt-get update
sudo apt-get -y install git nodejs npm
git clone https://github.com/jonatanariste/GDGNodeBoilerPlate.git
cd GDGNodeBoilerPlate/
npm install
source start.sh
