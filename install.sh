#!/bin/bash

sudo apt-get install libnotify-bin
chmod +x battery-health-notifications
sudo cp battery-health-notifications /usr/bin/ 
echo -e "\nIf everything is alright, the next step is:"
echo -e "\nRun crontab -e and paste this command: * * * * * battery-health-notifications"
