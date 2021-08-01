# Battery Health Notifications 

This script is for you to receive a notification when:

- Your cable is disconnected and the battery is below 20%
- Your cable is connected and the battery exceeds 90%

Original author: https://gitlab.com/gitaarik/battery-health-notifications

## Installing 

	$ git clone git@github.com:eddunic/battery-health-notifications.git
	
	$ cd battery-health-notifications
	
	$ sudo chmod +x install.sh
	
	$ ./install.sh
	
Or:

	$ wget https://raw.githubusercontent.com/eddunic/battery-health-notifications/main/battery-health-notifications

        $ sudo apt-get install libnotify-bin
        
        $ sudo chmod +x battery-health-notifications
        
        $ sudo cp battery-health-notifications /usr/bin/ 

Then, add the script to your crontab (`crontab -e`):

	* * * * * battery-health-notifications 

Note: if crontab doesn't run the script, try replacing the first line of code in file (`/usr/bin/battery-health-notifications`) with this one: 
	
	export $(xargs -0 -a "/proc/1000/environ")
	
Or use this: 

	export $(xargs -0 -a "/proc/$(pgrep gnome-session -n -U $UID)/environ")
	
## Development
	
It's been tested on Ubuntu 19.04 running GNOME 3.32.1 and Pop OS 20.04 running GNOME 3.36.8.
