#!/usr/bin/env bash

song=`mpc status | cut -d "/" -f 2 | head -n 1`
song=${song::10}
echo $song
