" Leader Key
let mapleader=" "


"Esc key
" inoremap jk <Esc>
" inoremap kj <Esc>
inoremap jj <Esc>

"Copy paste
vnoremap <C-c> "+y
map <C-p> "+p

" Fix indenting visual block
vmap < <gv
vmap > >gv

"Find and replace
nnoremap S :%s//gi<Left><Left><Left> 

" ------------------- Single Mappings ---------------
"  
nnoremap <leader><ENTER> :Goyo<CR>

" movement on windows
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" Resize with arrows
nnoremap <Up> :resize +2<CR> 
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

"Search
nnoremap <leader><Space> :Files <CR>
nnoremap <leader>/ :Clap lines <CR>
noremap <leader>m :Clap tags<CR> 

" Buffers 
noremap <leader>b :Clap buffers<CR> 
noremap <leader>p :bprevious<Return>
noremap <leader>n :bnext<Return>

"tab cycle between buffers
nnoremap <leader><Tab> :b#<cr> 
nnoremap <leader>` :bd<Return>

nmap <leader>r :!

" nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>v :Vista!!<CR>
set pastetoggle=<F12> " toogle paste mode so it doesnt bug with comments and autoindent



"--------------- c ----- comments binds --------
"Comment out lines with
nnoremap <leader>cs :g//Commentary<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
"comment paragraph
nmap <leader>cc gcap 

"--------------- f ---------- File  control  ---------------------
nnoremap <leader>fs :w<Return>
nnoremap <leader>fw :x<Return>
nnoremap <leader>fq :qall!<Return>
nnoremap <leader>fQ :q<Return>
"new file
nnoremap <leader>fn :e  
nnoremap <leader>fN :e  ../

nnoremap <leader>ff :Format<CR>
nnoremap <leader>fm :FloatermNew lf<CR>


"--------------- s -------- Search ---------------------------
nnoremap <leader>sc :Clap commits<CR>
nnoremap <leader>sg :Clap gfiles<CR>
nnoremap <leader>sC :Clap colors<CR>
nnoremap <leader>sk :Clap maps<CR>
nnoremap <leader>sl :Clap blines<CR>
nnoremap <leader>sL :Clap lines<CR>
nnoremap <leader>sb :Clap buffers<CR>
nnoremap <leader>sh :Clap hist:<CR>
nnoremap <leader>sS :Snippets<CR>
nnoremap <leader>st :Clap tags<CR>



"----------------t------- Terminal ---------------------------
nnoremap <leader>td :FloatermNew lazydocker<CR>
nnoremap <leader>tf :FloatermNew fzf<CR>
nnoremap <leader>tg :FloatermNew lazygit<CR>
nnoremap <leader>tm :FloatermNew lf<CR>
nnoremap <leader>tp :FloatermNew python<CR>
nnoremap <leader>tt :FloatermToggle<CR>
nnoremap <leader>ty :FloatermNew ytop<CR>

"--------------- w ----- windows binds --------
nnoremap <leader>ww <C-W>=
nnoremap <leader>wv :vertical ball<Return>
nnoremap <leader>wh :ball<Return>
nnoremap <leader>wd :hide<Return>
nnoremap <leader>wc :only<Return>



	""""""""""""""""
	"    Git       "
	""""""""""""""""
nnoremap <leader>gs :Gstatus<Return>
" nnoremap <leader>gw :Gwrite<Return>
" nnoremap <leader>gr :Gread<Return>
" nnoremap <leader>gd :Gremove<Return>
" nnoremap <leader>gd :Gdiff<Return>
" nnoremap <leader>gb :Gblame<Return>
" nnoremap <leader>gc :Gcommit<Return>
" nnoremap <leader>gl :Glog<Return>
" nnoremap <leader>gp :Ggrep 

nnoremap <leader>gh :GitGutterLineHighlightsToggle<Return>
nnoremap <leader>gg :GitGutterToggle<Return>
nmap <leader>gk <Plug>(GitGutterNextHunk)<Return>
nmap <leader>gj <Plug>(GitGutterPrevHunk)<Return>

	"""""""""""""""""
	""    Diffs     "
	"""""""""""""""""
"nnoremap <leader>dg :diffget<Return>
"nnoremap <leader>dg0 :diffget 0<Return>
"nnoremap <leader>dg1 :diffget 1<Return>
"nnoremap <leader>dg2 :diffget 2<Return>
"nnoremap <leader>dg3 :diffget 3<Return>
"nnoremap <leader>dg4 :diffget 4<Return>
"nnoremap <leader>dg5 :diffget 5<Return>
"nnoremap <leader>dg6 :diffget 6<Return>
"nnoremap <leader>dg7 :diffget 7<Return>
"nnoremap <leader>dg8 :diffget 8<Return>
"nnoremap <leader>dg9 :diffget 9<Return>
"nnoremap <leader>dp :diffput<Return>
"nnoremap <leader>dp0 :diffput 0<Return>
"nnoremap <leader>dp1 :diffput 1<Return>
"nnoremap <leader>dp2 :diffput 2<Return>
"nnoremap <leader>dp3 :diffput 3<Return>
"nnoremap <leader>dp4 :diffput 4<Return>
"nnoremap <leader>dp5 :diffput 5<Return>
"nnoremap <leader>dp6 :diffput 6<Return>
"nnoremap <leader>dp7 :diffput 7<Return>
"nnoremap <leader>dp8 :diffput 8<Return>
"nnoremap <leader>dp9 :diffput 9<Return>
"nnoremap <leader>du :diffupdate<Return>
"


"------------- Filetype -----------------
autocmd FileType go map <buffer> <F5> :!go run %<CR>
autocmd FileType python map  <buffer> <F5> :!python %<CR>
autocmd FileType rust map  <buffer> <F5> :!cargo run %<CR>
autocmd FileType sh map <buffer> <F5> :!./%<CR>



let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

"---- Colors----
map <F6> :colorscheme gruvbox<CR>
map <F7> :colorscheme orbital<CR>
map <F8> :colorscheme fahrenheit<CR>
map <F9> :colorscheme hybrid_reverse<CR>
map <F10> :colorscheme PaperColor<CR>
map <F11> :colorscheme spacegray<CR>


