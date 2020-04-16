#!/usr/bin/env bash
#Checks if there is already a script running, and uses next spot
# $1 = command to run
command="$*"
filename=$1
# echo $command

isOneRunning=`ps aux | grep -v grep | grep -e VSZ -e TempScript1 | wc | cut -d " " -f 7 `
# echo $isOneRunning

if [ $isOneRunning -eq 1 ];then
	instancename="TempScript1"
else
	isTwoRunning=`ps aux | grep -v grep | grep -e VSZ -e TempScript2 | wc | cut -d " " -f 7 `
	if [ $isTwoRunning -eq 1 ];then
		instancename="TempScript2"
	else
		# isThreeRunning=`ps aux | grep -v grep | grep -e -e VSZ -e TempScript1 | wc | cut -d " " -f 7 `
		echo "Only two in i3 config"
		echo "Exiting"
		exit
	fi
fi

st -n $instancename -e ~/.scripts/launchOneTermScript.sh $instancename "$command" $filename &




