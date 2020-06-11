#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))
shade1=`~/.scripts/getWalColors.sh 3`


if [ "$updates" -gt 0 ]; then
    echo "%{F#BA1010}  $updates %{F-}"
else
    echo "%{F$shade1}  $updates %{F-}"
fi
