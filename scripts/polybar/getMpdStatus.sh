#!/bin/bash - 
#===============================================================================
#
#          FILE: getMpdStatus.sh
# 
#         USAGE: ./getMpdStatus.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/01/20 00:50
#      REVISION:  ---
#===============================================================================

# daemonStatus=`~/.scripts/checkDaemonStatus.sh mpd`

# if [[ $daemonStatus == "inactive" ]] ; then
# 	echo "%{F#f00}  %{F-}"  
# else
shade1=`~/.scripts/getWalColors.sh 2`
shade2=`~/.scripts/getWalColors.sh 5`
shade3=`~/.scripts/getWalColors.sh 7`

	status=`mpc status | sed -n 2p | cut -d "[" -f 2 | cut -d "]" -f 1`
	case "$status" in
		paused) echo "%{F$shade2}  %{F-}" ;; 
		playing)echo "%{F#cff}  %{F-}" ;; 
		*) 	echo "%{F$shade1}  %{F-}" ;; 
	esac
# fi
