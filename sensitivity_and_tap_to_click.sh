# Thinkpad T410's TrackPoint has a low sensitivity by 
# default (Linux Mint), and all utilities don't seem to be able to 
# increase it. Also tap to click setting was missing.

# Place in startup applications to apply on every startup DOESNT WORK!!!

# Place the script you want to run in the /etc/init.d directory and make the script executable.
# chmod 755 myscript
# Once that is done create a symbolic link in the run level directory you would like to use, for example if you wanted to run a program in the graphical runlevel 2, the default runlevel for Ubuntu, you would place it in the /etc/rc2.d directory. You just cannot place it the directory, you must signify when it will run by indicating the startup with an “S” and the execution order is important. Place it after everything else that is in the directory by giving it a higher number.
# If the last script to be run is rc.local and it is named S99rc.local then you need to add your script as S99myscript.
# ln -s /etc/init.d/myscript /etc/rc3.d/S99myscript


sudo echo -n 120 > /sys/devices/platform/i8042/serio1/serio2/speed
sudo echo -n 200 > /sys/devices/platform/i8042/serio1/serio2/sensitivity
sudo echo -n 1 > /sys/devices/platform/i8042/serio1/serio2/press_to_select
