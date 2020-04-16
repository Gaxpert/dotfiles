#!/usr/bin/env bash

st=`~/.scripts/checkRunningProcess.sh firefox`

if [[ $st == "Running" ]]
then 
	echo "%{B#666}%{F#0F0}  %{B- F-}"
else
	echo "%{B#000}%{F#F00}  %{B- F-}"
fi
