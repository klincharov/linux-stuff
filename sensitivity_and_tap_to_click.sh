# Thinkpad T410 has a low sensitivity by default, and all 
# utilities don't seem to be able to increase it. Also 
# tap to click setting was missing.

# Place in startup applications to apply on every startup 

sudo echo -n 120 > /sys/devices/platform/i8042/serio1/serio2/speed
sudo echo -n 200 > /sys/devices/platform/i8042/serio1/serio2/sensitivity
sudo echo -n 1 > /sys/devices/platform/i8042/serio1/serio2/press_to_select
