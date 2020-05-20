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

#Backups main folders to external hdd
#Music is not backed up because its already in the drive

OUT="/mnt/Data/backups/Reg_Backup"

echo "Backing up folders to $OUT"
rsync -av ~/go $OUT 
echo "go folder archived to $OUT"
rsync ~/Images $OUT -av
echo "Images folder archived to $OUT"
rsync ~/Projects $OUT -av
echo "projects folder archived in $OUT"
rsync ~/SHARED_VMS $OUT -av
echo "shared vms folder archived in $OUT"
rsync ~/Tools $OUT -av
echo "tools folder archived in $OUT"

