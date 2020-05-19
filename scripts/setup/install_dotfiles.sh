#!/bin/bash - 
#===============================================================================
#
#          FILE: setup_ln_configs.sh
# 
#         USAGE: ./setup_ln_configs.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/17/20 18:49
#      REVISION:  ---
#===============================================================================

path=$1

#Folders
rm ~/.config/bspwm -r
ln -s $path"/bspwm" ~/.config/bspwm

rm ~/.config/dunst -r
ln -s $path"/dunst" ~/.config/dunst

rm ~/.config/lf -r
ln -s $path"/lf" ~/.config/lf

rm ~/.config/mpd -r
ln -s $path"/mpd" ~/.config/mpd

rm ~/.ncmpcpp -r
ln -s $path"/ncmpcpp" ~/.ncmpcpp

rm ~/.config/picom -r
ln -s $path"/picom" ~/.config/picom

rm ~/.config/polybar -r
ln -s $path"/polybar" ~/.config/polybar

rm ~/.config/rofi -r
ln -s $path"/rofi" ~/.config/rofi

rm ~/.scripts -r
ln -s $path"/scripts" ~/.scripts

rm ~/.config/sxhkd -r
ln -s $path"/sxhkd" ~/.config/sxhkd

rm ~/.vim/bundle/vim-snippets/UltiSnips -r
ln -s $path"/UltiSnips" ~/.vim/bundle/vim-snippets/UltiSnips
echo $path
#Files
rm ~/.profile
ln -s $path"/profile" ~/.profile

rm ~/.vimrc
ln -s $path"/vimrc" ~/.vimrc

rm ~/.xinitrc
ln -s $path"/xinitrc" ~/.xinitrc

rm ~/.Xmodmap 
ln -s $path"/Xmodmap" ~/.Xmodmap

rm ~/.Xresources
ln -s $path"/Xresources" ~/.Xresources

rm ~/.zshrc
ln -s $path"/zshrc" ~/.zshrc

