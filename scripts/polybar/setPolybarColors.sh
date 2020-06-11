#!/bin/sh

#Sets polybar colors.ini from wal colors

if [[ $(hostname) == "Battlestation" ]];then
	pc="desktop"
else
	pc="laptop"
fi

filename="$HOME/.config/polybar/colors_$pc.ini"
echo "Writing colors to $filename"

touch $filename
echo "[colors_$pc]" > $filename
echo "background = $(sed '1q;d' ~/.cache/wal/colors)" >> $filename
echo "foreground = $(sed '6q;d' ~/.cache/wal/colors)" >> $filename
echo "primary = $(sed '2q;d' ~/.cache/wal/colors)" >> $filename
echo "secondary = $(sed '3q;d' ~/.cache/wal/colors)" >> $filename
echo "alert = $(sed '4q;d' ~/.cache/wal/colors)" >> $filename
echo "" >> $filename

echo "Active shade" >> $filename
echo "shade0 = $(sed '1q;d' ~/.cache/wal/colors)" >> $filename
echo "shade1 = $(sed '2q;d' ~/.cache/wal/colors)" >> $filename
echo "shade2 = $(sed '3q;d' ~/.cache/wal/colors)" >> $filename
echo "shade3 = $(sed '4q;d' ~/.cache/wal/colors)" >> $filename
echo "shade4 = $(sed '5q;d' ~/.cache/wal/colors)" >> $filename
echo "shade5 = $(sed '6q;d' ~/.cache/wal/colors)" >> $filename
echo "shade6 = $(sed '7q;d' ~/.cache/wal/colors)" >> $filename
echo "shade7 = $(sed '8q;d' ~/.cache/wal/colors)" >> $filename
echo "shade8 = $(sed '9q;d' ~/.cache/wal/colors)" >> $filename
echo "shade9 = $(sed '10q;d' ~/.cache/wal/colors)" >> $filename
echo "shade10 = $(sed '11q;d' ~/.cache/wal/colors)" >> $filename
echo "shade11 = $(sed '12q;d' ~/.cache/wal/colors)" >> $filename
echo "shade12 = $(sed '13q;d' ~/.cache/wal/colors)" >> $filename
echo "shade13 = $(sed '14q;d' ~/.cache/wal/colors)" >> $filename
echo "shade14 = $(sed '15q;d' ~/.cache/wal/colors)" >> $filename
echo "shade15 = $(sed '16q;d' ~/.cache/wal/colors)" >> $filename

