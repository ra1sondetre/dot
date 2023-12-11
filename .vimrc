





syntax on 						 	" Turn syntax highlighting on.
set number relativenumber 		 	" Add numbers to each line on the left-hand side.
set shiftwidth=4 				 	" Set shift width to 4 spaces. 
set tabstop=4 						" Set tab width to 4 columns.
set nobackup 						" Do not save backup files
set cindent                         " Use 'C' style program indenting
set errorbells						" Beep or flash screen on 
set wrap linebreak
set tw=79



" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch

" Disable compatibility with vi which can cause enexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of file in use
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on

set ruler	" Show row and column ruler information
