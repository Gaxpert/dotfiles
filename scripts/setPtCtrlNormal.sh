#!/usr/bin/env bash

# setxkbmap -layout pt 
setxkbmap -layout pt -option



#Set caps with Ctl, both become caps
/usr/bin/setxkbmap -option "ctrl:nocaps"
#Swap caps with Ctrl
# /usr/bin/setxkbmap -option "ctrl:swapcaps"


# /usr/bin/setxkbmap -option "altwin:swap_alt_win" # Alt is swapped with Win

/usr/bin/setxkbmap -option "altwin:swap_lalt_lwin" # Left Alt is swapped with Win

# Ctrl L if holded is Ctrl, if tapped is Esc key
# xcape -e 'Control_L=Escape'
#Rctrol to Ralt
xmodmap ~/.Xmodmap

notify-send "PT layout set"




