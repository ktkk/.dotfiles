#!/bin/bash

# switch to blurred background upon opening a window
bspc subscribe | while read -r line; do
	node_num=$(bspc query --nodes --desktop | wc -l)
	if [ "$node_num" != "0" ]; then
		nitrogen --set-zoom-fill ~/Pictures/Wallpapers/green_leafed_plants_blur.jpg
	else
		nitrogen --set-zoom-fill ~/Pictures/Wallpapers/green_leafed_plants.jpg
	fi
done;		
