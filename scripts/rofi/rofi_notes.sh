#!/bin/bash

EDITOR="vim"

while getopts ":a:e:o:" opt; do
  case $opt in
    a) AUTHOR="$OPTARG"
    ;;
    e) EDITOR="$OPTARG"
    ;;
    o) NOTES_FOLDER="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

if [[ ! -d "${NOTES_FOLDER}" ]]; then
    mkdir -p "$NOTES_FOLDER"
fi

get_notes() {
    ls "${NOTES_FOLDER}"
}

edit_note() {
    note_location=$1
    urxvt -name TempH2 -e vim "$note_location"
}

read_note(){
	note_location=$1 
	#Laptop
	st -n TempH1 -f "MesloLGS NF:size=14" -g "75x22" -e bash -c "/usr/bin/glow $note_location -p less "
	# urxvt -name TempH1 -e bash -c "/usr/bin/glow $note_location -p less"
	#Desktop
	# st -n TempH1 -g 100x32 -e bash -c "/home/z/go/bin/glow $note_location -p less"
}

delete_note() {
    local note=$1
    local action=$(echo -e "Yes\nNo" | rofi -dmenu -p "Are you sure you want to delete $note? ")

    case $action in
        "Yes")
            rm "$NOTES_FOLDER/$note"
            main
            ;;
        "No")
            main
    esac
}

note_context() {
    local note=$1
    local note_location="$NOTES_FOLDER/$note"
    local action=$(echo -e "Read\nEdit\nDelete" | rofi -dmenu -p "$note > ")
    case $action in
	"Read")
		read_note "$note_location"
		;;
        "Edit")
            edit_note "$note_location"
            ;;
        "Delete")
            delete_note "$note"

    esac
}

new_note() {
    local title=$(echo -e "Cancel" | rofi -dmenu -p "Input title: ")

    case "$title" in
        "Cancel")
            main
            ;;
        *)
            local file=$(echo "$title" | sed 's/ /_/g;s/\(.*\)/\L\1/g')
            local template=$(cat <<- END

***
title: $title
date: $(date --rfc-3339=seconds)
author: $AUTHOR
***


# $title
END
            )

            note_location="$NOTES_FOLDER/$file.md"
            if [ "$title" != "" ]; then
                echo "$template" > "$note_location" | edit_note "$note_location"
            fi
            ;;
    esac
}


search_contents() {
	
    local search=$(echo -e "Cancel" | rofi -dmenu -p "Search: ")
    case "$search" in
        "Cancel")
            main
            ;;
        *)
		filesMatch=`ack $search $HOME/.notes -l`
		# filesMatch=`echo "$filesMatch" | tr " " "\n"`
		local note=$(echo ${filesMatch//"/home/z/.notes/"/ } | tr "  " "\n" | rofi -dmenu -p "Search results")

		read_note "$HOME/.notes/$note"

	esac

}


main()
{
    local all_notes="$(get_notes)"
    local first_menu="New"

    if [ "$all_notes" ];then
        first_menu="New\nsearch\n${all_notes}"
        # first_menu="New\nSearch\n${all_notes}"
    fi

    local note=$(echo -e "$first_menu"  | rofi -dmenu -p "Note: ")

    case $note in
        "New")
            new_note
            ;;
	"search")
	    search_contents
	    # search_note
	    ;;
        "")
            ;;
        *)
            note_context "$note"
    esac
}


main
