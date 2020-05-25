#!/bin/bash - 
#===============================================================================
#
#          FILE: launch_vm.sh
# 
#         USAGE: ./launch_vm.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/25/20 10:00
#      REVISION:  ---
#===============================================================================

#terminate running instances
killall -q polybar

#wait until processes shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done




#meu 
#polybar topbar &

#space git   
#https://github.com/jaagr/dots/blob/master/.local/etc/themer/themes/space/polybar
# polybar top &
polybar topVm &
#polybar bottom &


echo "Bars launched..."

