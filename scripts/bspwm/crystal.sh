#!/usr/bin/env sh

#Mix script for monocle mode with transparency. Mixed from brodie clean full screen and crystal script
#https://github.com/BrodieRobertson/cleanfullscreen/blob/master/cleanfullscreen
#https://github.com/salman-abedin/crystal

###############################################################################
#                             Config
###############################################################################

# BSPWM Specific settings
top_padding=35
bspc config borderless_monocle true
bspc config gapless_monocle true

###############################################################################
#                             Script
###############################################################################

WORKSPACE=/tmp/crystal_ws$(xdotool get_desktop)

HideNodes() {
  for node in $1; do
    bspc node "$node" -g hidden=on
  done
}

HideTiled() {
  Nodes=$(bspc query -N -n .tiled -d "$1" | grep -v `bspc query -N -n focused`)
  HideNodes "$Nodes"
}

ShowNodes() {
  # Nodes=$(bspc query -N -n .hidden -d "$1")

  # Only unhides non sticky nodes
  Nodes=$(bspc query -N -n .hidden -d "$1" | grep  "`bspc query -N -n .sticky -d "$1"`")

  for node in $Nodes; do

    bspc node "$node" -g hidden=off
  done
}

solo() {
    case $1 in
        on)
            echo solo >> "$WORKSPACE"
            HideTiled `bspc query -D -d`
            bspc desktop -l monocle
            ;;
        off)
            sed -i '/solo/d' "$WORKSPACE"
            ShowNodes `bspc query -D -d`
            bspc desktop -l tiled
            ;;
    esac
}

if grep solo "$WORKSPACE"; then
    solo off
    echo "Solo off"
else
    solo on
    echo "Solo on"
fi
