#!/bin/bash

# This only works in VirtualBox
# Remove or edit for bare metal

# Add new mode
xrandr --newmode "1920x1080" 172.80 1920 2040 2248 2576 1080 1081 1084 1118 -Hsync +Vsync
# Add new mode to display
xrandr --addmode Virtual-1 1920x1080
# Set new mode
xrandr --output Virtual-1 --mode 1920x1080
