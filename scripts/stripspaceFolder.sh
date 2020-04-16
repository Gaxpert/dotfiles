#!/bin/bash - 
#===============================================================================
#
#          FILE: stripspaceFolder.sh
# 
#         USAGE: ./stripspaceFolder.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/04/20 01:44
#      REVISION:  ---
#===============================================================================

path=$1
cd "$path"
for file in *.mp3
do
	~/.scripts/stripspace.sh "$file"
done

