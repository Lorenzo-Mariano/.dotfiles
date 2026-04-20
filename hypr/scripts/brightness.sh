#!/bin/bash

STEP_INT=1  # laptop %
STEP_EXT=10 # external

MODS=$(hyprctl devices -j | grep -A10 "keyboard" | grep "modifiers" | head -n1)

if echo "$MODS" | grep -q "SHIFT"; then
    # External monitor only
    if [[ "$1" == "up" ]]; then
        ddcutil setvcp 10 + $STEP_EXT
    else
        ddcutil setvcp 10 - $STEP_EXT
    fi
else
    # Laptop only
    if [[ "$1" == "up" ]]; then
        brightnessctl set +${STEP_INT}%
    else
        brightnessctl set ${STEP_INT}%-
    fi
fi
