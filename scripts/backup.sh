#!/bin/bash - 
#===============================================================================
#
#          FILE: backup.sh
# 
#         USAGE: ./backup.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/04/20 02:42
#      REVISION:  ---
#===============================================================================

read -r -p "Desktop? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then

	echo "Backing up folders to usb and hdd"
	rsync ~/go /run/media/z/Main -a
	echo "go/src folder archived in usb"
	rsync ~/Images /run/media/z/Main -a
	echo "Images folder archived in usb"
	rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Musica /run/media/z/Main -a
	echo "Musica folder archived in usb"
	rsync ~/Projects /run/media/z/Main -a
	echo "projects folder archived in usb"
	rsync ~/SHARED_VMS /run/media/z/Main -a
	echo "shared vms folder archived in usb"
	rsync ~/Tools /run/media/z/Main -a
	echo "tools folder archived in usb"

else
	echo "Backing up folders to usb"

fi


#Folder in Data internal hdd
# rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/notes /run/media/z/notes -a
# rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/go/src /run/media/z/Main/go -a
# rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Images /run/media/z/Main -a
# rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Musica /run/media/z/Main -a
# rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Projects /run/media/z/Main -a
# rsync /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/SHARED_VMS /run/media/z/Main -a


