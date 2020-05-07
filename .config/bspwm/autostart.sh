#!/bin/bash

# update x resources db
xrdb -merge $HOME/.Xresources &

# set the cursor
xsetroot -cursor_name left_ptr &

# launch sxhkd
sxhkd -c $HOME/.config/bspwm/sxhkd/sxhkdrc &

# launch Polybar
$HOME/.config/polybar/launch.sh &

# launch compositor (compton/picom)
picom &

# restore wallpaper (nitrogen)
nitrogen --restore &
