#!/bin/bash - 
#===============================================================================
#
#          FILE: launchlol.sh
# 
#         USAGE: ./launchlol.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 15/10/2019 19:17
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
WINEPREFIX=/home/z/Games/league-of-legends/ /opt/wine-lol/bin/wine /home/z/Games/league-of-legends/drive_c/Riot\ Games/League\ of\ Legends/LeagueClient.exe &


