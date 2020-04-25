#!/usr/bin/env bash


currentp=`pwd`
folder="/dotfiles/"
path=$currentp$folder
echo "Path detected $path"

function reportCopy {
	echo "Symlinked $1 file "
}

read -r -p "Desktop? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
	echo "Setting up i3 and polybar desktop mode"
	 rm -r ~/.i3
	 mkdir ~/.i3
	 ln -s $path"i3_desktop/config" ~/.i3/config
	 reportCopy "i3"
else
	echo "Setting up i3 and polybar laptop mode"
	 rm -r ~/.i3
	 mkdir ~/.i3
	 ln -s $path"i3_laptop/config" ~/.i3/config
	 reportCopy "i3"
fi

 rm -r ~/.config/polybar
 ln -s $path"polybar" ~/.config/
 reportCopy "polybar"

#set configs
rm ~/.vimrc
ln -s $path"vimrc" ~/.vimrc
reportCopy "vimrc"

rm ~/.zshrc
ln -s $path"zshrc" ~/.zshrc
reportCopy "zshrc "

rm ~/.Xresources
ln -s $path"Xresources" ~/.Xresources
reportCopy "Xresources"

rm ~/.config/picom/picom.config -r
mkdir ~/.config/picom
ln -s $path"picom.config" ~/.config/picom/picom.config
reportCopy "picom"

rm ~/.local/share/fonts
# mkdir ~/.local/share/fonts
ln -s -r $path"fonts" ~/.local/share/fonts
reportCopy "fonts"

rm ~/.scripts -r 
ln -s $path"scripts" ~/.scripts 
reportCopy "scripts"
# ln -s $path"tnote" ~/.tnote -r
# reportCopy "tnote"
rm ~/.Xmodmap
ln -s $path"Xmodmap" ~/.Xmodmap
reportCopy "Xmodmap"

 # ln -s ~/Code/SETUP_SYSTEM/snippets/* ~/.vim/bundle/vim-snippets/snippets/
# reportCopy "snippets"
rm ~/.notes
ln -s $path"notes" ~/.notes
reportCopy "notes folder"
rm ~/.xinitrc
ln -s $path"xinitrc" ~/.xinitrc
reportCopy "xinitrc"

rm ~/.config/mpd
ln -s $path"mpd" ~/.config/mpd
reportCopy "mpd"

rm /.profile
ln -s $path"profile" ~/.profile
reportCopy "profile"

rm /.ncmpcpp -r 
ln -s $path"ncmpcpp" ~/.ncmpcpp
reportCopy "ncmpcpp"

rm ~/.config/lf -r
ln -s $path"lf" ~/.config/lf
reportCopy "lf"




# mv ~/.bashrc ~/.bashrc_old
echo "zsh" >> ~/.bashrc
echo "Moved ~/.bashrc to ~/.bashrc_old so it sets zsh"

#vim and plugins
echo "Installing vim plugins"
# vim -c ":PluginInstall"
# cd ~/.vim/bundle/youcompleteme/
# python3 install.py


#so it matches files
rm -r ~/Documents
rm -r ~/Pictures
rm -r ~/Music

mkdir ~/Images
mkdir ~/Projects
mkdir ~/Tools



# chmod +x ~/.scripts/*
