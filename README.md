# Battery Health Notifications 

This script is for you to receive a notification when:

- Your cable is disconnected and the battery is below 20%
- Your cable is connected and the battery exceeds 90%

The script runs every minute.

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

Then, add the line below to your crontab using `crontab -e`:

	* * * * * battery-health-notifications 
	
## Testing

Note: For testing, you can to change the battery's health percent directly in file `/usr/bin/battery-health-notifications`. 

Run:

	$ battery-health-notifications

If it shows nothing, it's alright. But if it doesn't, change name of desktop environment session. First, verify with this:

## Solution

	$ ls /usr/bin/*session

Certainly, you'll view more than one directories. So, copy just the name of file equivalent to your desktop environment. Example: Last command shows `/usr/bin/xfce4-session`, copy only string `xfce4-session`.

Then, replace the first code line of `/usr/bin/battery-health-notifications` with copied string, like there:

Before: 

`export $(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session | head -n 1)/environ | tr '\0' '\n')`
	
After:

`export $(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME xfce4-session | head -n 1)/environ | tr '\0' '\n')`
	
## Development
	
It's been tested on Ubuntu 19.04 running GNOME 3.32.1 and Pop OS 20.04 running GNOME 3.36.8. The string session has changed on Kali Linux 2020.4 of VM version cause it's run with XFCE4.
