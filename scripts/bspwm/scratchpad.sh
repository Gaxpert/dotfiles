#!/bin/bash - 
#===============================================================================
#
#          FILE: scratchpad.sh
# 
#         USAGE: ./scratchpad.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/16/20 04:41
#      REVISION:  ---
#===============================================================================

#!/usr/bin/bash

#Script o hide scratchpad, works well with classes

if [ -z $1 ]; then
	echo "Usage: $0 <name of hidden scratchpad window>"
	exit 1
fi
    
pids=$(xdotool search --class ${1})
for pid in $pids; do
	echo "Toggle $pid"
	bspc node $pid --flag hidden -f
done

