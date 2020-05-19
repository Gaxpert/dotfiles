
" Leader Keys
let mapleader = "\<Space>"

"If doesnt exist install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')



	"""""""""""""
	"   THEMES  "
	" """""""""""
Plug 'fcpg/vim-orbital'
Plug 'fcpg/vim-fahrenheit'


	"""""""""""""
	"   WebDev  "
	" """""""""""
" Plugin 'maxmellon/vim-jsx-pretty' "Pretify js code (react)
" Plugin 'jelera/vim-javascript-syntax'
"See color codes
Plug 'gorodinskiy/vim-coloresque', { 'for': ['html', 'css', 'js']}


	"""""""""""""
	"   Bar     "
	" """""""""""
Plug 'itchyny/lightline.vim' "More simple
set laststatus=2
set noshowmode "Removes normal bar since its no longer nedded
Plug 'mengelbrecht/lightline-bufferline'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
set showtabline=2
let g:lightline                  = {}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()



	"""""""""""""
	"  FilesNav "
	" """""""""""
Plug 'scrooloose/nerdtree'   "Nerd tree
let NERDTreeQuitOnOpen=1 "Close nerdtree after file is open
Plug 'kien/ctrlp.vim' "fuzzy file finder
Plug 'jeetsukumaran/vim-buffergator'


	"""""""""""""
	"  Comment  "
	" """""""""""
Plug 'tpope/vim-commentary'
" Plugin 'tomtom/tcomment_vim'


	"""""""""""""
	"  Tag Bar  "
	" """""""""""
Plug 'majutsushi/tagbar' " pacman ctags



	""""""""""""""""""""""""""""""""""""""'
	"  Autocomplete + snippets = supertab "
	" """""""""""""""""""""""""""""""""""""
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
Plug 'ervandew/supertab'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
" Plug 'valloric/youcompleteme' "yay vim-youcompleteme-git
"go to .vim/bundle/youcompleteme ;   python3 install --all   (important,
"install for used languages)
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
" inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

Plug 'maralla/completor.vim'

	""""""""""""""""""""""""
	"  Language Specific   "
	" """"""""""""""""""""""
Plug 'vim-scripts/bash-support.vim', { 'for': 'sh'}
Plug 'fatih/vim-go', { 'for': 'go' }

"

	"""""""
	"latex"
	"""""""
" Plugin 'lervag/vimtex'
" let g:vimtex_complete_recursive_bib = 1
Plug 'vim-latex/vim-latex', { 'for': 'tex'}
" Plugin 'latex-box-team/latex-box'
" let g:Tex_MultipleCompileFormats='pdf,bib,pdf'


	"""""""
	"markdown"
	"""""""
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'






	"""""""
	"python"
	"""""""
Plug 'vim-scripts/indentpython.vim', { 'for': 'py'}
Plug 'jmcantrell/vim-virtualenv', { 'for': 'py'}
" Plugin 'jupyter-vim/jupyter-vim', { 'for': 'py'}
" let g:jupyter_mapkeys = 0

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rs'}
Plug 'racer-rust/vim-racer', { 'for': 'rs'}
set hidden
let g:racer_cmd = "/home/z/.cargo/bin/racer"
let g:racer_insert_paren = 1

	""""""""""""
	"  Extras "
	" """"""""""
Plug 'junegunn/limelight.vim'
Plug 'powerline/fonts'
Plug 'yggdroot/indentline' "Indent bar 
Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
Plug 'vim-scripts/restore_view.vim'
" Plugin 'machakann/vim-swap'
Plug 'jiangmiao/auto-pairs'
" Plugin 'tpope/vim-surround'
"  Del separator    ds(    delete separator <sep>  ("[ ....
"  Change separardor  cs(
" in visual mode   S <separator> ex: VS(

"Plug 'potatoesmaster/i3-vim-syntax'
Plug 'unblevable/quick-scope'   
" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']



"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Run async commands, replaces !
" :AsyncRun
"    % --> filename
"    %<  --> filename without extension
" Plugin 'skywind3000/asyncrun.vim'

"Cant update or install with these on
" Plugin 'camspiers/animate.vim'
" Plugin 'camspiers/lens.vim'

"Spell check
Plug 'dpelle/vim-LanguageTool'



"Must be last loaded plugin!!!!!
Plug 'ryanoasis/vim-devicons'



" All of your Plugins must be added before the following line
" Initialize plugin system
call plug#end()




" set tabstop=4 smartab expandtab
set noshowmode  " vim-airline plugin replaces 
set autoindent
set smartindent
set tabstop=4
" set >> shift with to same as tab
set shiftwidth=4


" Cursor line and column
set cursorline
" set cursorcolumn
" set color, colorscheme will take precedence in case its defined there
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
" highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b

" Autocompletion
set wildmode=longest,list,full

" With both on, searches with no capitals are case insensitive, while searches with a capital characters are case sensitive.
set smartcase
set ignorecase
"Persistent undo
set undofile

" turn hybrid line numbers on
set number relativenumber
set nu rnu
set mouse=a
set encoding=utf-8
set clipboard=unnamedplus

set spelllang=en_us 
set spell



"Esc key
inoremap jj <Esc>
" inoremap ff <Esc>
"
	""""""""""""""""
	"Buffer control  "
	""""""""""""""""
noremap <leader>bb :BuffergatorTabsToggle<Return>
noremap <leader>bp :BuffergatorMruCyclePrev<Return>
noremap <leader>bn :BuffergatorMruCycleNext<Return>
noremap <leader>bd :bd<Return>
noremap <leader>bl :ls<Return>

"Lighlin
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)


	""""""""""""""""
	"Window control "
	""""""""""""""""
set splitbelow
set splitright
" noremap <C-l> <C-E> 
" noremap <C-k> <C-Y> 

" movement on windows
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
" windows binds 
nnoremap <leader>ww <C-W>=
nnoremap <leader>wv :vertical ball<Return>
nnoremap <leader>wh :ball<Return>
nnoremap <leader>wd :hide<Return>
nnoremap <leader>wc :only<Return>

	""""""""""""""""
	"File  control "
	""""""""""""""""
	
" nnoremap <leader><Tab> :x<CR>
nnoremap <leader><Tab> :bd<Return>
nnoremap <leader>fs :w<Return>
nnoremap <leader>fw :x<Return>
nnoremap <leader>fq :qall!<Return>
let g:ctrlp_map = '<leader>ff'
silent! nmap <leader>ft :NERDTreeToggle<CR>
let g:ctrlp_open_new_file = 'v'


	""""""""""""""""
	"Editor control "
	""""""""""""""""
" nnoremap <C-J> <C-F>
" nnoremap <C-k> <C-B>
"Copy paste
vnoremap <C-c> "+y
map <C-p> "+p

"Open new line in insert mode
imap <C-o> <Esc>o

set foldmethod=indent
set foldlevel=99
"Fold with tab
nnoremap <Tab> za  



	""""""""""""""""
	"Shell control "
	""""""""""""""""
"Find and replace
nnoremap S :%s//gi<Left><Left><Left>
nmap <leader>ss :!
"Comment out lines with
nnoremap <leader>sc :g//Commentary<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

nmap <leader>cc gcap 







	""""""""""""""""
	"Plugins control "
	""""""""""""""""
"Emacs style -->  <leader>a  X   (App)

nmap <leader>at :TagbarToggle<CR>
noremap <leader>aa :call asyncrun#quickfix_toggle(8)<cr>
nmap <leader>al :Limelight<CR>
nmap <leader>aL :Limelight!<CR>
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
nmap <leader>aS :LanguageToolCheck<CR>   " Spell check
" nmap <leader>as call :AutoPairsShortcutToggle

" let g:AutoPairsShortcutToggle = ''

"Surround
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutFastWrap = '<C-w>'
" imap :call AutoPairsShortcutJump = '<C-j>'
let g:AutoPairsShortcutBackInsert = '<C-b>'
let g:AutoPairsShortcutJump = '<C-j>'

"For browser live preview install 'npm install -g browser-sync
" noremap <leader>lb :execute 'silent !urxvt -e browser-sync start --server --files . &'

"markdown







	""""""""""""""""
	"    Git       "
	""""""""""""""""
nnoremap <leader>gs :Gstatus<Return>
nnoremap <leader>gw :Gwrite<Return>
nnoremap <leader>gr :Gread<Return>
" nnoremap <leader>gd :Gremove<Return>
nnoremap <leader>gd :Gdiff<Return>
nnoremap <leader>gb :Gblame<Return>
nnoremap <leader>gc :Gcommit<Return>
nnoremap <leader>gl :Glog<Return>
nnoremap <leader>gp :Ggrep 

nnoremap <leader>gh :GitGutterLineHighlightsToggle<Return>
nnoremap <leader>gg :GitGutterToggle<Return>
nmap <leader>gk <Plug>(GitGutterNextHunk)<Return>
nmap <leader>gj <Plug>(GitGutterPrevHunk)<Return>

	""""""""""""""""
	"    Diffs     "
	""""""""""""""""
nnoremap <leader>dg :diffget<Return>
nnoremap <leader>dg0 :diffget 0<Return>
nnoremap <leader>dg1 :diffget 1<Return>
nnoremap <leader>dg2 :diffget 2<Return>
nnoremap <leader>dg3 :diffget 3<Return>
nnoremap <leader>dg4 :diffget 4<Return>
nnoremap <leader>dg5 :diffget 5<Return>
nnoremap <leader>dg6 :diffget 6<Return>
nnoremap <leader>dg7 :diffget 7<Return>
nnoremap <leader>dg8 :diffget 8<Return>
nnoremap <leader>dg9 :diffget 9<Return>
nnoremap <leader>dp :diffput<Return>
nnoremap <leader>dp0 :diffput 0<Return>
nnoremap <leader>dp1 :diffput 1<Return>
nnoremap <leader>dp2 :diffput 2<Return>
nnoremap <leader>dp3 :diffput 3<Return>
nnoremap <leader>dp4 :diffput 4<Return>
nnoremap <leader>dp5 :diffput 5<Return>
nnoremap <leader>dp6 :diffput 6<Return>
nnoremap <leader>dp7 :diffput 7<Return>
nnoremap <leader>dp8 :diffput 8<Return>
nnoremap <leader>dp9 :diffput 9<Return>
nnoremap <leader>du :diffupdate<Return>

	"""""""""""""""""
	"File Type Binds "
	"""""""""""""""""
"Python jupyter
	" autocmd Filetype python map <buffer> <F5> :JupyterRunFile<CR>
	" autocmd Filetype python map <buffer> <leader>x :JupyterRunFile<CR>
	" " autocmd Filetype python map <buffer> <F6> :JupyterSendRange<CR>
	" autocmd Filetype go map <buffer> <leader>x :AsyncRun go run %<CR>

" tnote filetype
	autocmd BufNewFile, BufRead *.tnote set filetype=text

" Recompile when saved tex file
	autocmd BufWritePost *.tex AsyncRun ~/.scripts/buildLatex.sh %

"Auto change the cwd to current file
	" autocmd BufEnter * lcd %:p:h

" Recompile when saved
	autocmd BufWritePost config.h, config.def.h !sudo make install
" Recompile Xresouces
	autocmd BufWritePost .Xresources !xrdb ~/.Xresources

augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> <leader>gd 		   <Plug>(rust-doc)
    " autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    " autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    " autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
augroup END





"Colors 
syntax on
" colo orbital
colo fahrenheit

" For some reason AutoPairs gets some weird space keybinds. Untoggle them in
" insert mode
" autocmd Filetype rust iunmap <buffer> <leader>
" autocmd Filetype rust iunmap <buffer> <leader>as

hi Normal guibg=NONE ctermbg=NONE
autocmd FileType vim let b:vcm_tab_complete = 'vim'





