#!/bin/sh
# Starts programs only if they aren't already running

# Full credit to @Boo#3642 on the Unixporn discord for the script

start() {
    COMMAND=$1
    shift
    ARGS=$*
    pgrep -u "$USER" -ic "$COMMAND" > /dev/null || $COMMAND $ARGS &
}

termstart() {
    COMMAND=$1
    shift
    ARGS=$*
    pgrep -u "$USER" -ic "$COMMAND" > /dev/null || st -n $COMMAND $COMMAND $ARGS &
}

[ "$DISPLAY" != ":0" ] && exit

# Start sxhkd
start sxhkd -c $HOME/.config/sxhkd/sxhkdrc

# launch mpd
start mpd

# launch notification manager (Dunst)
start dunst

# launch compositor (Compton/picom)
start picom

# launch power management
start xfce4-power-manager

# launch bluetooth manager
start blueman-applet

# launch screensaver
start xscreensaver -no-splash
