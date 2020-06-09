#!/bin/sh

# Set resolution
$HOME/.scripts/set-resolution.sh

# start the window manager
exec bspwm
