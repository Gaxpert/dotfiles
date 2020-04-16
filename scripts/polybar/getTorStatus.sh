#!/bin/bash - 
#===============================================================================
#
#          FILE: getTorStatus.sh
# 
#         USAGE: ./getTorStatus.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/06/20 17:08
#      REVISION:  ---
#===============================================================================

status=`systemctl status tor.service  | sed -n 3p | cut -d " " -f 7`

case $status in
	active)
		echo "%{B666}%{F#0f0}   﨩 %{B- F-}" ;;
	inactive)
		echo "%{B666}%{F#f00}   﨩 %{B- F-}" ;;
esac



