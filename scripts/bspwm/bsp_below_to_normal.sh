#!/bin/bash - 
#===============================================================================
#
#          FILE: bsptogglelayer.sh
# 
#         USAGE: ./bsptogglelayer.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/16/20 23:50
#      REVISION:  ---
#===============================================================================

NODES=$(bspc query --nodes .below --desktop focused)

for node in $NODES; do
	bspc node $node -l normal
done
