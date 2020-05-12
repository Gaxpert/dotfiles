#!/bin/bash - 
#===============================================================================
#
#          FILE: setup_sec.sh
# 
#         USAGE: ./setup_sec.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/12/20 19:55
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

yay -S burpsuite nmap metasploit 

go get -u github.com/tomnomnom/assetfinder
GO111MODULE=on go get -u -v github.com/lc/gau
go get github.com/ffuf/ffuf
go get github.com/OJ/gobuster
go get github.com/Gaxpert/httpecker



