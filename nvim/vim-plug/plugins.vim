" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

"-------- THEMES ------------- 
Plug 'fcpg/vim-orbital'
Plug 'fcpg/vim-fahrenheit'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ajh17/Spacegray.vim'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

"--------Bar----------
Plug 'itchyny/lightline.vim' "More simple
Plug 'mengelbrecht/lightline-bufferline'

"--Snippets
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


"---------- FilesNav--------
" Plug 'jeetsukumaran/vim-buffergator' "buffer control
Plug 'preservim/nerdtree' "file explorer bar
Plug 'Xuyuanp/nerdtree-git-plugin' "For git flags


Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim' "fuzzy file search



"------Comment-------
Plug 'tpope/vim-commentary' "Comments control

"----------Tag Bar--------
" Plug 'majutsushi/tagbar' " pacman ctags
Plug 'liuchengxu/vista.vim'


"------Autocomplete / Syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Plug 'davidhalter/jedi-vim' "python autocomplete for coc

"----------Looks and feel ------
Plug 'junegunn/limelight.vim' "Highlight focused text
Plug 'junegunn/goyo.vim'  "Focus mode
Plug 'powerline/fonts'  
Plug 'frazrepo/vim-rainbow' "Different colors for different matched brackets
Plug 'ryanoasis/vim-devicons'

Plug 'vim-scripts/restore_view.vim' "Restore view of document
Plug 'tmhedberg/SimpylFold' "Folding


" Build the extra binary if cargo exists on your system.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }


" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'



"-------Git ----------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"-------Extras -------
Plug 'kovetskiy/sxhkd-vim' "sxhkd syntax

Plug 'mattn/emmet-vim'

Plug 'voldikss/vim-floaterm' "Term

    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
  " Add some color
    Plug 'norcalli/nvim-colorizer.lua'

  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'

" auto set indent settings
Plug 'tpope/vim-sleuth'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'

"To check
"vim-hexokinase
"  Plug 'terryma/vim-multiple-cursors'
 


call plug#end()
