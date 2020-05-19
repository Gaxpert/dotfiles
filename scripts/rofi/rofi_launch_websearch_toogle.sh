#!/bin/bash - 
#===============================================================================
#
#          FILE: rofi_launch_websearch_toogle.sh
# 
#         USAGE: ./rofi_launch_websearch_toogle.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/18/20 11:30
#      REVISION:  ---
#===============================================================================

browser=`cat ~/.scripts/rofi/browser`

if [[ $browser == "firefox" ]]; then
	echo "" >  ~/.scripts/rofi/browser
else
	echo "firefox" > ~/.scripts/rofi/browser
fi


