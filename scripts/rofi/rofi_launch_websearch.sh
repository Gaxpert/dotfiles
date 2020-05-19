#!/bin/bash - 
#===============================================================================
#
#          FILE: rofi_search_browser.sh
# 
#         USAGE: ./rofi_search_browser.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/18/20 11:24
#      REVISION:  ---
#===============================================================================

browser=`cat ~/.scripts/rofi/browser`

if [[ $browser == "firefox" ]]; then
	~/.scripts/rofi/rofi-MyWebSearch.sh firefox
else
	~/.scripts/rofi/rofi-MyWebSearch.sh brave
fi

