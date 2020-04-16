#!/bin/bash - 
#===============================================================================
#
#          FILE: restore.sh
# 
#         USAGE: ./restore.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/04/20 02:48
#      REVISION:  ---
#===============================================================================


read -r -p "Desktop? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo "Restoring main directories and backing up to internal hdd"
	echo "Check internal "
	mounted=`cat /proc/mounts | grep 3e3c0228-99ad-4145-a408-0b4e68a32e05 | wc | cut -d " " -f 7`
	if [[ $mounted == "1" ]]; then
		echo "mounted"
	else
		echo "not mounted, mounting..."
		# mount /dev/sda1 /mnt
		exit
	fi
	rsync /run/media/z/Main/notes/ ~/.notes -a
	rsync /run/media/z/Main/notes/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/notes -a
	rsync /run/media/z/Main/go/src/ ~/go/src -a
	rsync /run/media/z/Main/go/src/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/go/src -a
	rsync /run/media/z/Main/Images/ ~/Images -a
	rsync /run/media/z/Main/Images/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Images -a
	rsync /run/media/z/Main/Musica/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Musica -a
	rsync /run/media/z/Main/Projects/ ~/Projects -a
	rsync /run/media/z/Main/Projects/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Projects -a
	rsync /run/media/z/Main/SHARED_VMS/ ~/SHARED_VMS -a
	rsync /run/media/z/Main/SHARED_VMS/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/SHARED_VMS -a
	rsync /run/media/z/Main/Tools/ ~/Tools -a
	rsync /run/media/z/Main/Tools/ /mnt/3e3c0228-99ad-4145-a408-0b4e68a32e05/Main/Tools -a
else
	echo "Setting up labtop files"
	rsync /run/media/z/Main/notes/ ~/.notes -a
	echo "Restored notes"
	rsync /run/media/z/Main/go/src/ ~/go -a
	echo "Restored go src"
	rsync /run/media/z/Main/Images/ ~/Images -a
	echo "Restored Images"
	rsync /run/media/z/Main/Musica/ ~/Musica -a
	echo "Restored Music"
	rsync /run/media/z/Main/Projects/ ~/Projects -a
	echo "Restored Projects"
	rsync /run/media/z/Main/SHARED_VMS/ ~/SHARED_VMS -a
	echo "Restored SHARED_VMS"
fi


echo "Syncing files"

