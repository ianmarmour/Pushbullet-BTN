#!/bin/bash

#Name:Pushbullet-BTN
#Date: 5/28/2015
#Author: ther1v3r

#This installer will install the Pushbullet-BTN integration on an Ubuntu/Debian based system and create an upstart
#service for the installation for ease of use.
echo ""
echo ""
echo ""
echo "Welcome to the Pusbhullet-BTN Integration Installer"
echo ""
echo ""
echo "Before we begin installation lets check some dependencies, we're going to prompt you for root for this"

if [ $(dpkg-query -W -f='${Status}' nodejs 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get -y install nodejs;
fi

if [ $(dpkg-query -W -f='${Status}' npm 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get -y install npm;
fi

echo ""
echo "Before we begin this integration needs some information to function"
echo ""
echo "Enter your Pushbullet API Key and press [ENTER]: "
read pushbulletapikey
echo "Enter your BTN Username and press [ENTER]: "
read btnusername
echo "Enter your BTN IRC Password and press [ENTER]: "
read btnircpassword

rm ./lib/config.json
touch ./lib/config.json

echo "{
	"\"pushbulletapikey\"" : "\""$pushbulletapikey"\"",
	"\"btnusername\"" : "\""$btnusername"\"", 
	"\"btnircpassword\"" : "\""$btnircpassword"\""
}" >> ./lib/config.json

echo ""
echo "Copying Pushbullet-BTN to /opt"
cp -R ../Pushbullet-BTN /opt/

echo ""
echo "Moving to Install Directory"
cd /opt/Pushbullet-BTN/

echo ""
echo "Moving to Lib dir"
cd ./lib/

echo ""
echo "Install dependencies"
npm -s install

echo ""
echo "Installing Pushbullet-BTN as an Upstart Service"
mv ./Pushbullet-BTN.conf /etc/init/
rm ./Pushbullet-BTN.conf

echo ""
echo "Moving backup to install root"
cd ..

echo "Removing installation script"
rm ./install.sh

echo "To start your new BTN-Pushbullet Integration simply type the following command start Pushbullet-BTN"
