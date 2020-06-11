#!/bin/bash  


#If daemon is not connect cant control output

daemonStatus=`~/.scripts/checkDaemonStatus.sh expressvpn`

shade1=`~/.scripts/getWalColors.sh 3`
shade2=`~/.scripts/getWalColors.sh 9`
shade3=`~/.scripts/getWalColors.sh 14`


if [[ $daemonStatus == "inactive" ]] ; then
	echo "%{F#f00}   %{F-}"  
else

	info=`expressvpn status | head -n 1`
	case "$info" in 
	  *Not*)   
		echo "%{B#000}%{F$shade3}    %{B- F-}"    ;;
	   *Connecting*) 
		echo "%{B666}%{F$shade2}    %{B- F-}" ;;
	   *Connected*)
		info=`expressvpn status | cut -d " " -f 3 `
		info=${info::10}
		echo "%{B333}%{F$shade1}    $info%{B- F-}" ;;
		*) echo "Error"
	esac
fi
