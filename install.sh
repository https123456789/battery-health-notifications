#!/bin/bash

wget https://raw.githubusercontent.com/eddunic/battery-health-notifications/main/battery-health-notifications
sudo apt-get install libnotify-bin
sudo chmod +x battery-health-notifications
sudo cp battery-health-notifications /usr/bin
sudo sh -c "echo '* * * * * battery-health-notifications' >> /var/spool/cron/crontabs/"$USER
echo "OK"
