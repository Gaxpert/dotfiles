#!/bin/bash - 
#===============================================================================
#
#          FILE: systemctlToggle.sh
# 
#         USAGE: ./systemctlToggle.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/01/20 20:22
#      REVISION:  ---
#===============================================================================
program=$1
status=`~/.scripts/checkDaemonStatus.sh $program`

if [[ $status == "active" ]]; then
	sudo systemctl stop $program.service
else
	sudo systemctl start $program.service
fi
