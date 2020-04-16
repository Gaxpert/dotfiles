#!/bin/bash - 
#===============================================================================
#
#          FILE: expressvpn_connect.sh
# 
#         USAGE: ./expressvpn_connect.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 07/10/2019 10:08
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
killall $1
expressvpn connect $2 

