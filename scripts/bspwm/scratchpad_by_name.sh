#!/bin/bash - 
#===============================================================================
#
#          FILE: scratchpad_by_ps.sh
# 
#         USAGE: ./scratchpad_by_ps.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/16/20 17:52
#      REVISION:  ---
#===============================================================================


#!/usr/bin/bash

#Script o hide scratchpad, works well with classes

if [ -z $1 ]; then
	echo "Usage: $0 <name of hidden scratchpad window>"
	exit 1
fi
    
pids=$(xdotool search --name ${1})
# pids=$(xdotool search --name ${1}| sed -n '1!p')
for pid in $pids; do
	bspc node $pid --flag hidden -f
done
