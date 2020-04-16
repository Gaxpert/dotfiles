#!/bin/bash - 
#===============================================================================
#
#          FILE: switchSoundOut.sh
# 
#         USAGE: ./switchSoundOut.sh 
# 
#   DESCRIPTION: Usa os fones ou as colunas como output de som
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 10/10/2019 10:23
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


if [[ "$1" == "fones" ]];then
        # pactl set-card-profile alsa_card.usb-Razer_Razer_Nari_Essential-00 output:iec958-stereo+input:analog-mono
        pactl set-card-profile alsa_card.usb-Razer_Razer_Nari_Essential-00 output:iec958-stereo+input:mono-fallback
        pactl set-card-profile alsa_card.pci-0000_2f_00.4 off
else
        pactl set-card-profile alsa_card.usb-Razer_Razer_Nari_Essential-00 off
        pactl set-card-profile alsa_card.pci-0000_2f_00.4 output:analog-surround-51
fi



