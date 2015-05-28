#Name: Pushbullet-BTN-Uninstall
#Author: ther1v3r
#Date: 5/28/2015

echo "Removing Upstart Config and Install directory"
rm -R /opt/Pushbullet-BTN
rm /etc/init/Pushbullet-BTN
echo "If you wish to remove nodejs and npm do so with apt-get -y remove nodejs npm"
