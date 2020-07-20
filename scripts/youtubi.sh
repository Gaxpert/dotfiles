
RED='\033[0;31m'
Green='\033[1;32m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
NC='\033[0m' 

# filename=$1
filename=~/Musica/youtubi.txt
yt(){
	cd ~/Musica/downloads
	while read p; do
		youtube-dl --extract-audio --audio-format mp3 $p
	done<$filename
	rm $filename
	touch $filename
}


while [ "$q" != "q" ]; do
	clear
	printf "\t${Purple}Youtube Links do Download${RED}\n\n-->  ${NC}"
	read q
	if [ "$q" != "q" ] && [ "$q" != "download" ] && [ "$q" != "ls" ]; then
		echo "$q" >> $filename
	fi
	if [ "$q" == "download" ];then
		yt
		echo "Downloads completed"
		# ~/.scripts/stripspaceFolder.sh "~/Musica/downloads"
		read -n 1 -s
	fi
	if [ "$q" == "ls" ]; then
		lines=`wc ~/Musica/youtubi.txt | cut -d " " -f 2`
		echo "File has $lines songs"
		read -n 1 -s
	fi
done

