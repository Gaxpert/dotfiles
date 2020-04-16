#!/bin/bash - 
#===============================================================================
#
#          FILE: checkDaemonStatus.sh
# 
#         USAGE: ./checkDaemonStatus.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: gaxpert
#  ORGANIZATION: 
#       CREATED: 04/01/20 20:00
#      REVISION:  ---
#===============================================================================

program=$1

status=`systemctl status $program.service | grep Active | cut -d " " -f 7`

echo $status

