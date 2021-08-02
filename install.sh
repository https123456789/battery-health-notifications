#!/bin/bash

sudo apt-get install libnotify-bin
chmod +x battery-health-notifications
sudo cp battery-health-notifications /usr/bin

#corrigir esta linha abaixo
sudo sh -c "echo '* * * * * battery-health-notifications' >> /var/spool/cron/crontabs/"$USER

echo "OK"
