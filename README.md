# Battery Health Notifications 

This script is for you to receive a notification when:

- Your cable is disconnected and the battery is below 20%
- Your cable is connected and the battery exceeds 90%

It is recommended that you run the script at an interval via your crontab.

Original author: https://gitlab.com/gitaarik/battery-health-notifications

Note: If your desktop environment isn't tested, follow the testing section too.

## Installing 

	$ wget https://raw.githubusercontent.com/eduardonbneves/battery-health-notifications/main/battery-health-notifications

        $ sudo apt-get install libnotify-bin
        
        $ chmod +x battery-health-notifications
        
        $ sudo mv battery-health-notifications /usr/bin/ 

Then, add the line below to your crontab using `crontab -e` (if you followed the first method, this is not necessary):

	* * * * * battery-health-notifications 
	
## Testing (required if your desktop environment isn't tested)

> Note: For testing, you can to change the battery's health percent directly in file `/usr/bin/battery-health-notifications`. 

Run:

	$ battery-health-notifications

If there is output, then the script won't work. You can file a bug report [here](https://github.com/edudo678/battery-health-notifications/issues).

## Tested Desktops

- Ubuntu 19.04 running GNOME 3.32.1
- Pop OS 20.04 running GNOME 3.36.8
- Parrot OS 5.3 running Sway 1.7
