#!/usr/bin/env bash

shade1=`~/.scripts/getWalColors.sh 10`
song=`mpc status | cut -d "/" -f 2 | head -n 1`
song=${song::10}
echo "%{F$shade1} $song %{F-}"
