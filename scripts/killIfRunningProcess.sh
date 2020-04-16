#!/bin/bash - 
#===============================================================================
#
#          FILE: killRunningProcess.sh
# 
#         USAGE: ./killRunningProcess.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 07/10/2019 10:05
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

ps_state=`./checkRunningProcess.sh $1`
if [[ "$ps_state" == "Running" ]];then
        pkill $1
fi

