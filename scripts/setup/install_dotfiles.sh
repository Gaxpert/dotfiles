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

if [ "$#" -eq 0 ]; then
	echo "Usage: $0 "
	echo "       $0 "
	exit 0
fi

path=$1

#Folders
rm ~/.config/bspwm -r
ln -s $path"/bspwm" ~/.config/bspwm

rm ~/.config/dunst -r
ln -s $path"/dunst" ~/.config/dunst

rm ~/.config/lf -r
ln -s $path"/lf" ~/.config/lf

rm ~/.config/mpd -r
ln -s $path"/mpd" ~/.mpd

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

rm ~/.config/sxiv -r
ln -s $path"/sxiv" ~/.config/sxiv


#Vim-plug
rm ~/.vim/plugged/vim-snippets/Ultisnips -r
ln -s $path"/UltiSnips" ~/.vim/plugged/vim-snippets/Ultisnips

#applications / desktop files
rm ~/.local/share/applications/sxiv.desktop
ln -s $path"/applications/sxiv.desktop" ~/.local/share/applications

rm ~/.local/share/applications/zathura.desktop
ln -s $path"/applications/zathura.desktop" ~/.local/share/applications


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

rm ~/.config/zathura -r 
ln -s $path"/zathura" ~/.config/zathura

rm ~/.zshrc
ln -s $path"/zshrc" ~/.zshrc




