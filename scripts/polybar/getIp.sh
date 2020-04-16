#!/bin/bash - 
#===============================================================================
#
#          FILE: getIp.sh
# 
#         USAGE: ./getIp.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 02/02/2020 11:51
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
curl ifconfig.io

