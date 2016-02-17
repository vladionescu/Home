" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Enable syntax highlighting
syntax enable

" Color scheme
colorscheme desert
set background=dark

" Highlight current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Show line numbers
set number
hi LineNr ctermfg=darkgrey ctermbg=none

" Visual autocomplete for command menu
set wildmenu

" Redraw only when we need to
set lazyredraw

" Search as characters are entered
set incsearch

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

set ai   " Auto indent
set si   " Smart indent
set wrap " Wrap lines
