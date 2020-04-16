#!/bin/bash - 
#===============================================================================
#
#          FILE: musicSetMetadata.sh
# 
#         USAGE: ./musicSetMetadata.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/03/20 00:49
#      REVISION:  ---
#===============================================================================

artists="/home/z/Projects/system/resources/artistList"
path="~/Musica/downloads/"


# ~/.scripts/stripspaceFolder.sh $path

setMetadata(){
	echo $title
	echo $originalSong
	echo $artist
	echo $title
	title=$1
	artist=$2
	originalSong=$3
	title=${title:0:-16}
	title=${title//$artist}
	title=${title//-/ }
	#Set spaces again
	artist=${artist//-/ }
	artist=${artist//_/ }
	title=${title//-/ }
	title=${title//_/ }
	#Remove some useless words
	title=${title//"music video"}
	title=${title//"video"}
	title=${title//"official"}
	title=${title//"audio"}
	# echo $originalSong
	# echo $title
	# echo $artist
	# mv $path$originalSong $path$song".mp3"
	# mp3info $originalSong -a "$artist" -t "$title"
	id3v2 -a "$artist"  $originalSong
	# echo "final name $song.mp3"
}



cd ~/Musica/downloads
for song in *.mp3
do
	#loop through artist list file and check if matches
	# song=`echo $song | sed 's/ /-/g' | tr '[:upper:]' '[:lower:]'`
	# ~/.scripts/stripspace.sh $song
	originalSong=$song
	song=`echo $song  | tr '[:upper:]' '[:lower:]'`
	song=`echo $song  | sed 's/ /-/g'`

	checkArtist=0
	#If its remix we dont check artist 
	case "$song" in
		*remix*)
			setMetadata $song "remix" $originalSong;;
		*mix*)
			setMetadata $song "mix" $originalSong;;
		*) checkArtist=1 
	esac
	if [ $checkArtist -eq 1 ]; then
		while read artist; do
			# artist=`echo $artist | sed 's/ /_/g'`
			# echo $artist

			# echo $song
			#Set cases for Mix, Cover and Remix
			case "$song" in
				*$artist*)
					setMetadata $song $artist $originalSong
					;;
			esac

			# echo $artist
		done < $artists
	fi

 # echo $song
done



mv ~/Musica/downloads/* ~/Musica/Musica


#update database
mpc update



