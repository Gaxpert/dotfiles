#!/bin/sh

pulsemixer --toggle-mute
status=`pulsemixer --get-mute`
if [[ $status == "1" ]];then
	notify-send "Muted"
else
	notify-send "Unmuted"
fi
