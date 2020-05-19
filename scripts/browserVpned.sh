#!/bin/bash - 
#===============================================================================
#
#          FILE: browserVpned.sh
# 
#         USAGE: ./browserVpned.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 08/10/2019 11:13
#      REVISION:  ---
#==============================================================================

set -o nounset                              # Treat unset variables as an error
# 0f0 -> connected
# f00 -> disconnected
vpn_state=`~/.scripts/polybar/getVpnStatus.sh | cut -d '{' -f 2 | cut -d '}' -f 1`
case "$vpn_state" in
	*0f0*) chromium & ;;
	*) opera & ;;
esac
