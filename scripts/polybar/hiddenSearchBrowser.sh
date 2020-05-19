#!/usr/bin/env bash

st=`~/.scripts/checkRunningProcess.sh firefox`

brows=`cat ~/.scripts/rofi/browser`

if [[ $brows == "firefox" ]]; then
	if [[ $st == "Running" ]]
	then 
		echo "%{B#666}%{F#0F0}  %{B- F-}"
	else
		echo "%{B#000}%{F#9cf}  %{B- F-}"
	fi
else
	echo "%{B#000}%{F#333}  %{B- F-}"
fi

