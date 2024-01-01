" Main config options
set number                  " Add line numbers
syntax on                   " Syntax highlighting
set nocompatible            " Disable compatibility to old-time vi
set mouse=a                 " Allows the use of the mouse in the editor.
set hidden
set relativenumber
set clipboard=unnamed
set title
set wildmenu
set incsearch               " incremental search
set hlsearch                " highlight search
set showmatch               " show matching
set ignorecase              " treat everything in text and search as lowercase
set smartcase
filetype plugin indent on   " Allow auto-indenting depending on file type
set expandtab               " Converts tabs to white space
set autoindent              " Indent a new line the same amount as the line just typed
set shiftwidth=4            " Width for autoindents
set tabstop=4               " Number of columns occupied by a tab
set smarttab


hi Visual  guifg=#000000 guibg=#FFFFFF gui=none

" Plugin for vim/nvim
" A minimalist Vim plugin manager.
" Link for install https://github.com/junegunn/vim-plug
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf'
  Plug 'ryanoasis/vim-devicons'
  Plug 'csexton/trailertrash.vim'
call plug#end()


let NERDTreeShowHidden=1
" Initialize configuration dictionary
let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['hidden,left,50%,<70(up,40%)', 'ctrl-/']

"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'


" Keyboard
nnoremap <F3> :noh<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F5> :TrailerTrim<CR>


set t_Co=256
" True color if available
let term_program=$TERM_PROGRAM
" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif



" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif



