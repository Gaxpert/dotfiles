#!/bin/bash

# Date: 29 / May / 2020
# Author: Gaxpert

# set your browser (uncomment if needed, some GUI does not detect browser variable)
BROWSER=$1

searches="ArchWiki\nCommandLineFu\nCveDetails\nCveMitre\nGoogle\nGoogleImages\nGoogleMaps\nGitHub\nImdb\nlibgen\nlibgenru\nSlant\nShodan\nWikipedia\nVimAwesome\nYoutube\n"
# input=$(echo -e "$searches" | rofi -kb-row-select "Tab" -kb-row-tab "Control+space" -dmenu  -i -p "MyWebSearch: ")
input=$(echo -e $searches | rofi -kb-row-select "Tab" -kb-row-tab "Control+space" -dmenu  -i -p "MyWebSearch: ")
search_engine=`echo $input | cut -d " " -f 1`
search_query=`echo $input | sed "s#\$search_engine##g"`

#trimp first white space 
search_query=${search_query:1}
#Replace white space on multiple words querys by +

search_query=`echo $search_query | tr " " +`
#So it works on  *  cases

#Add search engines here
#
# code to identify search engine)    search="https://search.com/?q="$search_query
#     ex:   g) "https://www.google.com/?q="$search_query ;;
case $search_engine in
	aw | ArchWiki) search="wiki.archlinux.org/index.php?search="$search_query ;;
	cfu | CommandLineFu) search="https://www.commandlinefu.com/commands/matching/$search_query/cw==/sort-by-votes" ;;
	cve | CveDetails) search="https://www.cvedetails.com/google-search-results.php?q="$search_query ;;
	cveMitre | CveMitre) search_query="https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword="$search_query ;;
	g | Google) search="https://www.google.com/search?q="$search_query ;;
	gi | GoogleImages) search"https://www.google.com/search?tbm=isch&sa=1&btnG=Search&q=$search_query&oq=&gs_l= " ;;
	gm | GoogleMaps) search="https://www.google.com/maps?q="$search_query ;;
	git | GitHub) search="https://github.com/search?q=$search_query&type=" ;;
	imdb | Imdb ) search="https://www.imdb.com/find?q=$search_query&ref_=nv_sr_sm" ;;
	libgen | LibGen) search=" http://libgen.io/search.php?req=$search_query&open=0&res=200&view=simple&phrase=1&column=def" ;;
	libgenru | LibGenRu) search="http://gen.lib.rus.ec/search.php?req=$search_query&lg_topic=libgen&open=0&view=simple&res=25&phrase=0&column=def" ;;
	# syncme | SyncMe ) search="https://sync.me/search/?number=351$search_engine" ;;
	sh | Shodan ) search="https://www.shodan.io/search?query=$search_query" ;;
	sl | Slant ) search="https://www.slant.co/search?query=$search_query" ;;
	vw | VimAwesome) search="https://vimawesome.com/?q="$search_query ;;
	ts | TheSaurus ) search="https://www.thesaurus.com/noresult?term=$search_query&s=t" ;;
	yt | Youtube) search="https://www.youtube.com/results?search_query="$search_query ;;
	w | W | Wikipedia) search="https://en.wikipedia.org/wiki/"$search_query ;;

	#No input case
	"") exit ;;
	 *) #Use input raw since no search engine was specified
		input=`echo $input| tr " " +`
		 search="https://www.duckduckgo.com/?q="$input
		;;
esac

active=`ps aux | grep -v grep | grep -i -e VSZ -e firefox | wc | cut -d " " -f 7`
echo $input

if (( $active == 1 ))
then
	$BROWSER "$search"
else
	$BROWSER "$search"
fi


