set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
set termguicolors

  syntax enable                           " Enables syntax highlighing
  set hidden                              " Required to keep multiple buffers open multiple buffers
  set nowrap                              " Display long lines as just one line
  set encoding=utf-8                      " The encoding displayed 
  set pumheight=10                        " Makes popup menu smaller
  " set fileencoding=utf-8                  " The encoding written to file
  set ruler              			            " Show the cursor position all the time
  set cmdheight=2                         " More space for displaying messages
  set mouse=a                             " Enable your mouse
  set splitbelow                          " Horizontal splits will automatically be below
  set splitright                          " Vertical splits will automatically be to the right
  " set t_Co=256                            " Support 256 colors
  set conceallevel=0                      " So that I can see `` in markdown files
  set tabstop=2                           " Insert 2 spaces for a tab
  set shiftwidth=2                        " Change the number of space characters inserted for indentation
  set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab                           " Converts tabs to spaces
  set smartindent                         " Makes indenting smart
  set autoindent                          " Good auto indent
  set laststatus=2                        " Always display the status line
  set number                              " Line numbers
  set cursorline                          " Enable highlighting of the current line
" highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
  set background=dark                     " tell vim what the background color looks like
  set showtabline=2                       " Always show tabs 
  set noshowmode                          " We don't need to see things like -- INSERT -- anymore
  set nobackup                            " This is recommended by coc
  set nowritebackup                       " This is recommended by coc
  set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
  set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
  set updatetime=300                      " Faster completion
  " set timeoutlen=100                      " By default timeoutlen is 1000 ms
  set clipboard=unnamedplus               " Copy paste between vim and everything else
  set incsearch

set wildmode=longest,list,full

set spelllang=en_us 
set spell
"
set smartcase
set ignorecase " With both on, searches with no capitals are case insensitive, while searches with a capital characters are case sensitive.
set undofile "Persistent undo
set number relativenumber " turn hybrid line numbers on

set foldmethod=indent
set foldlevel=99

  " set autochdir                           " Your working directory will always be the same as your working directory
  "
  "
" colorscheme gruvbox


