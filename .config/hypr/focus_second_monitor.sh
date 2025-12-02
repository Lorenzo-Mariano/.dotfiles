#!/bin/bash

SECOND_MONITOR="HDMI-A-1"
if hyprctl monitors | grep -q "$SECOND_MONITOR"; then
    hyprctl dispatch focusmonitor "$SECOND_MONITOR"
fi

