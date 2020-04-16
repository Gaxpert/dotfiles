#!/bin/bash - 
#===============================================================================
#
#          FILE: getSoundOut.sh
# 
#         USAGE: ./getSoundOut.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 10/10/2019 10:37
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error



out=`pactl info | sed '13q;d'`

sinkColunas="Default Sink: alsa_output.pci-0000_2f_00.4.analog-surround-51"
sinkRazer="Default Sink: alsa_output.usb-Razer_Razer_Nari_Essential-00.iec958-stereo"

if [[ "$out" == $sinkColunas ]];then
        echo "%{B#000}%{F#F91}  %{B- F-}"
else
        echo "%{B#666}%{F#0f4}  %{B- F-}"

fi








