#!/bin/bash - 
#===============================================================================
#
#          FILE: buildLatex.sh
# 
#         USAGE: ./buildLatex.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 27/02/2020 11:56
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Check first line to see if its a subfile
firstLine=`head -n 2 chapters/introduction.tex | cut -d " " -f 3`
if [[ $firstLine == *".tex" ]]; then
	filename=$firstLine
else
	filename=$1
fi


pdflatex $filename
name=${filename::-4}
biber $name
pdflatex $filename

# if okular is not open, open it
if ps aux | grep -v grep | grep "okular $name.pdf" > /dev/null
then 
	:
else
	echo "Launching okular"
	okular $name".pdf" &
fi
