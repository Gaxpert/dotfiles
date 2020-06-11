#!/usr/bin/env bash
	


layout=`setxkbmap -query | grep layout | cut -d " " -f 6 `

shade1=`~/.scripts/getWalColors.sh 3`
shade2=`~/.scripts/getWalColors.sh 13`


if [[ "$layout" == "us" ]]; then
	echo "%{F$shade1}  %{F-}"
elif [[ "$layout" == "pt" ]]; then
	echo "%{F#cff}  %{F-}"
else
	echo "ERROR"
fi



