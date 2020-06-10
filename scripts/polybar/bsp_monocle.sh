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
if [[ `hostname` == "dracul" ]]; then
	state=`bspc wm -g | cut -d ":" -f 10`
else
	state=`bspc wm -g | cut -d ":" -f 12`
fi

if [[ $state == "LM" ]];then
	echo "%{F#cff}  %{F-}"
else
	echo "%{F#333}  %{F-}"
fi


