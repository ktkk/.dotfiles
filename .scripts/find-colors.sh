#!/bin/bash

# reload xresources
xrdb $HOME/.Xresources

# find color from xrdb
color=$1
echo $(xrdb -query | grep $color | awk '{print $NF}')
