#gdgnode boiler plate


How to install all

in ubuntu

vi install.sh
press i

copy this code

############

#!/bin/bash
sudo apt-get update
sudo apt-get install git nodejs npm
git clone https://github.com/jonatanariste/GDGNodeBoilerPlate.git
cd GDGNodeBoilerPlate; npm install

##########

later change de private ip in start.sh


run the command sh start.sh