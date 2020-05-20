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

#Restores main folders from external data storage to pc

#The music directory can have a diferent folder

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 -o <path/to/storage>"
	echo "    -o  path/to/usb"
	echo "    -m  path/to/music/lib"
	echo ""
	echo "Ex:       $0 -o /mnt/USB -m ~/Music"
	exit 0
fi



while getopts "o:m:" opt; do
	case $opt in
		o) OUT="$OPTARG"
			;;
		m) MUSIC="$OPTARG"
			;;
		\?) echo "Invalid option -$OPTARG" >&2
	esac
done


echo $OUT
echo $MUSIC
echo $OUT/go

echo "Backing up folders to $OUT"

rsync -av $OUT/go ~/go --delete
echo "Go folder archived to $OUT"

rsync $OUT/Images ~/Images -av --delete
echo "Images folder archived to $OUT"

rsync $OUT/Projects ~/Projects -av --delete
echo "Projects folder archived in $OUT"

rsync $OUT/SHARED_VMS ~/SHARED_VMS -av --delete
echo "Shared vms folder archived in $OUT"

rsync $OUT/Tools ~/Tools -av --delete
echo "Tools folder archived in $OUT"

rsync $OUT/.fonts ~/.fonts  -av --delete
echo "Fonts folder archived in $OUT"

if [ ! -z "$MUSIC"  ];then
	echo "Backing up music external to $MUSIC"
	rsync $OUT/Musica $MUSIC -av 
fi

