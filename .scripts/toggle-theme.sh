#!/bin/bash

COLORS="$HOME/.config/xresources/colors"
BSPWMRC="$HOME/.config/bspwm/bspwmrc"
THEME=$1

if [ "$THEME" = "light" ]; then
	sed "s/*background: #dfdfdf/*background: #dfdfdf/g" $COLORS &
	sed "s/*background: #222222/*background: #dfdfdf/g" $COLORS &
	sed "s/*foreground: #222222/*foreground: #222222/g" $COLORS &
	sed "s/*foreground: #dfdfdf/*foreground: #222222/g" $COLORS &
elif [ "$THEME" = "dark" ]; then
	sed "s/*background: #222222/*background: #222222/g" $COLORS &
	sed "s/*background: #dfdfdf/*background: #222222/g" $COLORS &
	sed "s/*foreground: #dfdfdf/*foreground: #dfdfdf/g" $COLORS &
	sed "s/*foreground: #222222/*foreground: #dfdfdf/g" $COLORS &
fi

sed "s/sxhkd -c $HOME/.config/sxhkd/sxhkdrc &/#sxhkd -c $HOME/.config/sxhkd/sxhkdrc &/g" $BSPWMRC &&
sed "s/$HOME/.config/bspwm/autostart.sh/#$HOME/.config/bspwm/autostart.sh/g" $BSPWMRC &

xrdb $HOME/.Xresources &
$HOME/.config/polybar/launch.sh &
$HOME/.config/bspwm/bspwmrc &

sed "s/#sxhkd -c $HOME/.config/sxhkd/sxhkdrc &/sxhkd -c $HOME/.config/sxhkd/sxhkdrc &/g" $BSPWMRC &&
sed "s/#$HOME/.config/bspwm/autostart.sh/$HOME/.config/bspwm/autostart.sh/g" $BSPWMRC &
