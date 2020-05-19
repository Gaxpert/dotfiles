#!/bin/bash - 
#===============================================================================
#
#          FILE: pulsemixer_volume.sh
# 
#         USAGE: ./pulsemixer_volume.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/18/20 12:07
#      REVISION:  ---
#===============================================================================

#Raises or lowers volume
#ex  $0 +5 / $0 -5

vol=`pulsemixer --get-volume | cut -d " " -f 1`

let vol=$vol$1

pulsemixer --set-volume $vol


