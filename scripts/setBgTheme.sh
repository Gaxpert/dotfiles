#!/bin/sh

#Sets wallpaper and theme 

if [[ $(hostname) == 'Battlestation' ]]; then
	feh --bg-scale $1 $2 $3 &
	wal -n -i $1
	#replace bg image in bspwm/bspwmrc config
	sed -i "6cBACKGROUND_MON_1=\"$1\"" ~/.config/bspwm/bspwmrc
	sed -i "7cBACKGROUND_MON_2=\"$2\"" ~/.config/bspwm/bspwmrc
	sed -i "8cBACKGROUND_MON_3=\"$3\"" ~/.config/bspwm/bspwmrc
	~/.scripts/polybar/setPolybarColors.sh
else
	feh --bg-scale $1 &
	wal -n -i $1
	#replace bg image in bspwm/bspwmrc config
	sed -i "4cBACKGROUND=\"$1\"" ~/.config/bspwm/bspwmrc
	#Change colors in polybar
	~/.scripts/polybar/setPolybarColors.sh
fi

