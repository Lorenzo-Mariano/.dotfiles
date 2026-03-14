#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)

# Hey Lorenzo. Make your rofi keybind point to this
# launcher script. Happy ricing!

dir="$HOME/.config/rofi/"
# we need like some sort of red theme ngl
# also a pinkish theme like bocchi but with more aura
# need one that goes well wit da robin pape
# theme='calli-pink'
# theme='yae-miko'
# theme='bocchi-light'
# theme='bocchi-dark'
# theme='monochrome'
theme='famine'
# theme='gruvbox'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
