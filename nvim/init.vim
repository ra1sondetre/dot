" Plugin for nvim
call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'  
    Plug 'preservim/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'elvessousa/sobrio'
    Plug 'morhetz/gruvbox'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf'
call plug#end()

" Keyboard
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <C-q> :q!<CR>


hi Visual  guifg=#000000 guibg=#FFFFFF gui=none
" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
set clipboard=unnamedplus
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set clipboard=unnamedplus

" Tabs size
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set showmatch


filetype plugin indent on
syntax on

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

" Open file same location where you close
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" File browser
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'


