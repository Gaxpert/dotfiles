#!/bin/bash - 
#===============================================================================
#
#          FILE: launchI3Scratch.sh
# 
#         USAGE: ./launchI3Scratch.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/04/20 08:52
#      REVISION:  ---
#===============================================================================

app=$1
name="xrvt"$1

active=`ps aux | grep -v grep | grep -i -e VSZ -e $name | wc | cut -d " " -f 7`

if (( $active == 1 ))
then #launch
	urxvt -name $name -e $app &
	read -n 1

else
	i3-msg "[instance="$name"] scratchpad show"
fi


