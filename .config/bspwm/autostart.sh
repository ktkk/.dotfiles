#!/bin/bash

# update x resources db
xrdb -merge $HOME/.Xresources &

# set the cursor
xsetroot -cursor_name left_ptr &

# launch Polybar
$HOME/.config/polybar/launch.sh &

# launch notification manager (Dunst)
dunst &

# launch compositor (Compton/picom)
picom &

# restore wallpaper (Nitrogen)
#~/.config/bspwm/scripts/blur_background.sh &
nitrogen --restore &

# launch mpd
#sudo mpd $HOME/.config/mpd/mpd.conf &

# relaunch pywal
#wal -R
