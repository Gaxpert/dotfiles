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
	status=`mpc status | sed -n 2p | cut -d "[" -f 2 | cut -d "]" -f 1`
	case "$status" in
		paused) echo "%{F#ff0}  %{F-}" ;; 
		playing)echo "%{F#0f0}  %{F-}" ;; 
		*) 	echo "%{F#ff0}  %{F-}" ;; 
	esac
# fi
