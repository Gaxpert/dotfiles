#!/usr/bin/env bash
	


layout=`setxkbmap -query | grep layout | cut -d " " -f 6 `

if [[ "$layout" == "us" ]]; then
	echo "%{B#000}%{F#08F}  %{B- F-}"
elif [[ "$layout" == "pt" ]]; then
	echo "%{B#666}%{F#0F0}  %{B- F-}"
else
	echo "ERROR"
fi



