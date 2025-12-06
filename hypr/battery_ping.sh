#!/usr/bin/env bash

BATTERY=$(upower -e | grep 'BAT')

while true; do
    PERCENT=$(upower -i "$BATTERY" | awk '/percentage:/ {print $2}' | tr -d '%')
    STATE=$(upower -i "$BATTERY" | awk '/state:/ {print $2}')

    if [[ "$STATE" == "discharging" && "$PERCENT" -le 25 ]]; then
        notify-send -u critical "⚡ Low Battery" "Battery at ${PERCENT}% — please plug in your charger."
    fi

    sleep 120
done

