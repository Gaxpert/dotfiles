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

#Backups main folders to external data storage

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 -o <path/to/storage>"
	echo "       $0 -o /mnt/USB"
	exit 0
fi

while getopts "o:" opt; do
	case $opt in
		o) OUT="$OPTARG"
			;;
		\?) echo "Invalid option -$OPTARG" >&2
	esac
done



echo "Backing up folders to $OUT"
rsync -av ~/go $OUT --delete
echo "Go folder archived to $OUT"
rsync ~/Images $OUT -av --delete
echo "Images folder archived to $OUT"
rsync ~/Projects $OUT -av --delete
echo "Projects folder archived in $OUT"
rsync ~/SHARED_VMS $OUT -av --delete
echo "Shared vms folder archived in $OUT"
rsync ~/Tools $OUT -av --delete
echo "Tools folder archived in $OUT"
rsync /mnt/Data/Musica $OUT -av --delete
echo "Music folder archived in $OUT"
rsync ~/.fonts $OUT -av --delete
echo "Fonts folder archived in $OUT"


