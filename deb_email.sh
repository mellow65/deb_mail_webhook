#!/bin/bash

color='\033[1;31m'
reset='\033[0m'

echo -e "${color}By using this script, you'll update the system, download python3, mailutils, pip, discord-webhook.  This will pull down the python script and place it in a folder /home/scripts.  Set up your crontab to run the check twice a day.${reset}"


apt-get update
apt-get upgrade -y

apt-get install mailutils -y

apt-get install python3 -y

apt install pip -y

pip install discord-webhook -y

wget https://raw.githubusercontent.com/mellow65/deb_mail_webhook/main/discord_newemail.py

mkdir -p /home/scripts

mv discord_newemail.py /home/scripts

chmod +x /home/scripts/discord_newemail.py

echo "0 7,13,19 * * * python3 /home/scripts/discord_newemail.py" >> /var/spool/cron/crontabs/$USER


echo -e "${color}You must go in and change your dicord webhook URL in /home/scripts/discord_newemail.py for all this to work.${reset}"
