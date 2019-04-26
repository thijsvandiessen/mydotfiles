" Enable syntax highlighting
syntax on

" Display line numbers on the left
set number

" Enable use of the mouse for all modes
set mouse =a

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"   Force utf-8 encoding
set encoding=utf-8

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Use filetype detection and file-based automatic indenting.
  filetype plugin indent on

  " Use actual tab chars in Makefiles.
  autocmd FileType make set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
endif

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
