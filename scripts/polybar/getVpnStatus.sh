#!/bin/bash  


#If daemon is not connect cant control output

daemonStatus=`~/.scripts/checkDaemonStatus.sh expressvpn`

if [[ $daemonStatus == "inactive" ]] ; then
	echo "%{F#f00}   %{F-}"  
else

	info=`expressvpn status | head -n 1`
	case "$info" in 
	  *Not*)   
		echo "%{B#000}%{F#f80}    %{B- F-}"    ;;
	   *Connecting*) 
		echo "%{B666}%{F#ff0}    %{B- F-}" ;;
	   *Connected*)
		info=`expressvpn status | cut -d " " -f 3 `
		info=${info::10}
		echo "%{B666}%{F#0f0}    $info%{B- F-}" ;;
		*) echo "Error"
	esac
fi
