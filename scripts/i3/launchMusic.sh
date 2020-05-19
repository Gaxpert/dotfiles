#!/bin/bash - 
#===============================================================================
#
#          FILE: launchMusic.sh
# 
#         USAGE: ./launchMusic.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/01/20 21:13
#      REVISION:  ---
#===============================================================================

active=`ps aux | grep -v grep | grep -i -e VSZ -e rxvtMusic | wc | cut -d " " -f 7`

if (( $active == 1 ))
then #launch
	urxvt -name rxvtMusic -e ncmpcpp &
	read -n 1

else
	i3-msg '[instance="rxvtMusic"] scratchpad show'
fi

