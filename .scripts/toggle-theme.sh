#!/bin/bash

COLORS="$HOME/.config/xresources/colors"
BSPWMRC="$HOME/.config/bspwm/bspwmrc"

BG=$($HOME/.scripts/find-colors.sh background)
THEME=$1

if [ "$THEME" = "light" ]; then
	echo "LIGHT!"
	echo $BG
elif [ "$THEME" = "dark" ]; then
	echo "DARK!"
	echo $BG
fi

#xrdb $HOME/.Xresources &
#$HOME/.config/polybar/launch.sh &
#$HOME/.config/bspwm/bspwmrc &
