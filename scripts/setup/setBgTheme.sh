#!/bin/sh

#Sets wallpaper and theme 

if [[ $(hostname) == 'Battlestation' ]]; then
	echo "Battlestation uses nitrogen instead of feh!"
else
	feh --bg-scale $1 &
	wal -n -i $1
	sed -i "4cBACKGROUND=\"$1\"" ~/.config/bspwm/bspwmrc
fi

