# Pushbullet-BTN

##Description
I created this NodeJS program to fill the gap that currently exists within BTN regarding Pushbullet Notifications. This program is by no means perfect, it currently relies on IRC as well as having a server/workstation to run it constantly. Hopefully the BTN devs will eventually get around to making an official integration but it doesn't look like it so I'm releasing this to the public.

##Installation

On an Ubuntu/Debian based workstation chmod the install.sh to 755 with the following command,

  ```bash
  chmod 755 install.sh
  ```

Then run the installer with,

```bash
./install.sh
``` 

The installer will prompt you for credentials if you are not root, these are needed to install dependencies.

The installer will prompt you for your Pushbullet API Key as well as your BTN Username and the Password you set up with the NickServ for BTN.

##Removal

On an Ubuntu/Debian based workstation cd to the install directory in /opt with the following command,
  
  ```bash
  cd /opt/Pushbullet-BTN
  ```
  
On an Ubuntu/Debian based workstation chmod the uninstall.sh to 755 with the following command,

  ```bash
  chmod 755 uninstall.sh
  ```
  
Then run the uninstaller with,

  ```bash
  ./uninstall.sh
  ```

If you no longer wish to have NodeJS/NPM installed on your system simply uninstall them with the following command,

  ```bash
  sudo apt-get -y remove nodejs npm
  ```
  
If you have any more questions feel free to contact me via PM on BTN. My username is ther1v3r
