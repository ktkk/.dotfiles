#!/bin/bash

COLORS="$HOME/.config/xresources/colors"
BSPWMRC="$HOME/.config/bspwm/bspwmrc"

BG=$($HOME/.scripts/find-colors.sh background)
THEME=$1

case $THEME in
	light)
		echo "LIGHT!"
		if [ "$BG" = "#dfdfdf" ]; then
			echo "Already in light mode!"
		elif [ "$BG" = "#222222" ]; then
			sed -in "s/background: #222222/background: #dfdfdf/g" $COLORS
			sed -in "s/foreground: #dfdfdf/foreground: #222222/g" $COLORS
			#nitrogen --set-scaled $HOME/Pictures/Wallpapers/golden-gate.jpg
			feh --bg-scale $HOME/Pictures/Wallpapers/golden-gate.jpg 
			echo "Set background color to white."
		fi
		;;
	dark)
		echo "DARK!"
		if [ "$BG" = "#222222" ]; then
			echo "Already in dark mode!"
		elif [ "$BG" = "#dfdfdf" ]; then
			sed -in "s/background: #dfdfdf/background: #222222/g" $COLORS
			sed -in "s/foreground: #222222/foreground: #dfdfdf/g" $COLORS
			#nitrogen --set-scaled $HOME/Pictures/Wallpapers/mount-fuji.jpg
			feh --bg-scale $HOME/Pictures/Wallpapers/mount-fuji.jpg 
			echo "Set background color to black."
		fi
		;;
esac

polybar-msg cmd restart

$HOME/.config/bspwm/bspwmrc &

exit
