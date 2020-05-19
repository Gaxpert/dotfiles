#!/bin/bash - 
#===============================================================================
#
#          FILE: bsp_monocle.sh
# 
#         USAGE: ./bsp_monocle.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/18/20 02:31
#      REVISION:  ---
#===============================================================================



#NOTE: The field might depend on other factors
state=`bspc wm -g | cut -d ":" -f 8`

if [[ $state == "LM" ]];then
	echo "%{F#cff}  %{F-}"
else
	echo "%{F#333}  %{F-}"
fi


