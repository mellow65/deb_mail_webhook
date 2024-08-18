#!/bin/bash

echo "This is a notification for the root user" | mail -s "Notification" root

sleep 5

python3 /home/scripts/discord_newemail.py

sleep 5

rm /var/mail/root
