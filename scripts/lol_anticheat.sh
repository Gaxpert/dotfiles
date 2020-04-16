#!/bin/bash - 
#===============================================================================
#
#          FILE: lol_anticheat.sh
# 
#         USAGE: ./lol_anticheat.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 15/11/2019 15:11
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
sudo sh -c 'sysctl -w abi.vsyscall32=0'

