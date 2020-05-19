#!/usr/bin/env bash

#Script for running a command that takes long time
#Hides the terminal window before execution and shows it in the end
#  $1 = instance name of i3 window
#  $2 = command to run
#     > st -n InstanceName -e ThisScript.sh InstanceName "Command to run"


instancename=$1
i3-msg "[instance="$instancename"] scratchpad show " > /dev/null

timstamp=`date +%s`

command=$2
$command
filename=$3

output=`$command`
echo $output

i3-msg "[instance="$instancename"] scratchpad show " > /dev/null

echo ""
echo "  > Terminated succesfully "
echo " (C)opy /  (W)rite  /  (Q)uit "
read -n 1 ANSWER
case $ANSWER in
	c | C) 
		echo "$output" | xclip -selection clipboard
		echo "Copied output to clipoard"
		;;
	w | W)
		echo "$output" > "/tmp/$filename$timstamp"
		echo "Copied output to /tmp folder"
		echo "filename $filename$timstamp"
		;;
	q | Q)
		exit
		;;
esac

read -n 1 
