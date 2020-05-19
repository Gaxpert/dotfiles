#!/bin/bash - 
#===============================================================================
#
#          FILE: bsp_rotate_desktop.sh
# 
#         USAGE: ./bsp_rotate_desktop.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/18/20 13:30
#      REVISION:  ---
#===============================================================================


#Rotates desktop $1


node=`bspc query -N -d "$1" | cut -d$'\n' -f1`
bspc node $node -R 90
