#!/bin/bash

# update x resources db
xrdb -merge $HOME/.Xresources &

# set the cursor
xsetroot -cursor_name left_ptr &

# launch mpd
exec mpd &

# launch notification manager (Dunst)
dunst &

# launch compositor (Compton/picom)
picom &

# restore wallpaper (Nitrogen)
#~/.config/bspwm/scripts/blur_background.sh &
nitrogen --restore &

# launch power management
xfce4-power-manager &

# launch bluetooth manager
blueman-applet &

# launch screensaver
xscreensaver &

# launch Polybar
$HOME/.config/polybar/launch.sh &
