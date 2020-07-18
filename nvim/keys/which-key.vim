" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Ignore
let g:which_key_map.0 = 'which_key_ignore'
let g:which_key_map.1 = 'which_key_ignore'
let g:which_key_map.2 = 'which_key_ignore'
let g:which_key_map.3 = 'which_key_ignore'
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'

let g:which_key_map.h = 'which_key_ignore'
let g:which_key_map.j = 'which_key_ignore'
let g:which_key_map.k = 'which_key_ignore'
let g:which_key_map.l = 'which_key_ignore'
let g:which_key_map.hp = 'which_key_ignore'
let g:which_key_map.TAB = 'which_key_ignore'

" Single mappings
let g:which_key_map['Space'] = [ ':Files'              , 'Search Files' ]
let g:which_key_map['Return'] = [ ':Goyo'                 , 'Goyo' ]
" let g:which_key_map['Tab'] = [ ':b#'    , 'Last Buffer' ]
let g:which_key_map['`'] = [ ':bd'    , 'Close Buffer' ]
let g:which_key_map['/'] = [ ':Lines'              , 'Search line in Buffers' ]
let g:which_key_map['b'] = [ ':Buffers'    , 'List Buffers' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'    , 'Explorer' ]
let g:which_key_map['m'] = [ ':Clap tags'              , 'Search Tag' ]
let g:which_key_map['n'] = [ ':bnext'    , 'Next Buffer' ]
let g:which_key_map['r'] = [ ':!'    , 'Run shell command' ]
let g:which_key_map['p'] = [ ':bprevious'    , 'Previous Buffer' ]
let g:which_key_map['v'] = [ ':Vista!!'    , 'Vista Tag View' ]
let g:which_key_map['F12'] = [ ':set pastetoggle=<F12>'    , 'Toggle Paste Mode' ]


" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'A' : [''    , 'Toggle Autopairs'],
      \ }

" c is for comment
let g:which_key_map.c = {
      \ 'name' : '+comment' ,
      \ 's' : [''    , 'Search and comment matches'],
      \ 'c' : [''    , 'Comment paragraph'],
      \ }

" f is for files
let g:which_key_map.f = {
      \ 'name' : '+files' ,
      \ 'f' : [':Format'        , 'Format File'],
      \ 'm' : [':FloatermNew lf'        , 'Lf'],
      \ 'n' : [':e'        , 'New file in pwd'],
      \ 'N' : [':e ../'        , 'New file in ../'],
      \ 's' : [':w'        , 'Save file'],
      \ 'q' : [':q'    , 'Quit file'],
      \ 'Q' : [':qall!'    , 'Quit all files'],
      \ 't' : [':NerdTreeToggle'          , 'Toggle Nerd Tree'],
      \ 'w' : [':wq'  , 'Save and quit file'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 's' : [''    , 'Git Status'],
      \ 'g' : [''    , 'Git Gutter Highlight'],
      \ 'h' : [''    , 'Git Gutter Toggle'],
      \ 'n' : [''    , 'Next Hunk'],
      \ 'p' : [''    , 'Previous Hunk'],
      \ }
" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ 'c' : [':Clap'    , 'Git commits'],
      \ 'C' : [':Clap'    , 'Colors'],
      \ 'b' : [':Clap'    , 'Buffers'],
      \ 'k' : [':Clap'    , 'Keybinds'],
      \ 'l' : [':Clap'    , 'Current Buffer line'],
      \ 'L' : [':Clap'    , 'All Buffers line'],
      \ 'g' : [':Clap'    , 'Git Files'],
      \ 'h' : [':Clap'    , 'History'],
      \ 't' : [':Clap'    , 'Tags'],
      \ 'S' : [':Snippets'    , 'Snippets'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 'd' : [':FloatermNew docker'    , 'Docker'],
      \ 'f' : [':FloatermNew fzf'    , 'fzf'],
      \ 'g' : [':FloatermNew git'    , 'Git'],
      \ 'm' : [':FloatermNew lf'    , 'lf'],
      \ 'p' : [':FloatermNew python'    , 'Python'],
      \ 't' : [':FloatermToggle'    , 'Toggle Terminal'],
      \ 'y' : [':FloatermNew ytop'    , 'ytop'],
      \ }

" w is for window
let g:which_key_map.w = {
      \ 'name' : '+window' ,
      \ 'w' : [''        , 'Balance windows'],
      \ 'v' : [':vertical ball'        , 'Vertical split'],
      \ 'h' : [':ball'        , 'Horizontal split'],
      \ 'd' : [':hide'        , 'hide'],
      \ 'c' : [':only'    , 'Show only focused window'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
