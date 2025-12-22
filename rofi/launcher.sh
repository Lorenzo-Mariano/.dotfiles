#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)

# Hey Lorenzo. Make your rofi keybind point to this
# launcher script. Happy ricing!

dir="$HOME/.config/rofi/"
# theme='calli-pink'
# theme='yae-miko'
theme='bocchi-light'
# theme='bocchi-dark'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
