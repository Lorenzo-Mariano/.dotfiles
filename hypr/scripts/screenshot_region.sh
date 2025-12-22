#!/bin/bash

screenshot_filename="$HOME/Pictures/Screenshots/Hyprland-$(date +"%d-%m-%Y-%H%S").png"
grim -g "$(slurp)" $screenshot_filename

if [ -e $screenshot_filename ]; then
    notify-send -i $screenshot_filename "Grim" "Screenshot Saved \n $screenshot_filename"
fi
