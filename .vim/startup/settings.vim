filetype off                  " required

syntax on

colorscheme codedark

"let hlstate=0
"set hlsearch
"hi Search ctermbg=red
"hi Search ctermfg=white

set is

set textwidth=0 
set wrapmargin=0

set nocompatible              " be iMproved, required
set noswapfile

set autoread

set splitright
set splitbelow

set clipboard=unnamed

set mouse=
set ttymouse=

let g:airline_theme = 'codedark'

set number
"set relativenumber
"set rnu
set ruler

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent

set nowrap

"set scrolloff=999

let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
"let &t_SR.="\e[4 q"

let mapleader=","

"let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=50

let python_highlight_all = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class$'

"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"autocmd VimEnter * wincmd p

"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType qf 15wincmd_

"hi LineNr ctermbg=black
set foldcolumn=0
hi foldcolumn ctermbg=darkgray
hi VertSplit ctermbg=darkgray  ctermfg=darkgray

"hi Search    term=NONE guifg=black guibg=yellow
"hi IncSearch term=NONE guifg=black guibg=yellow
highlight IncSearchCursor ctermfg=0 ctermbg=9 guifg=#000000 guibg=#FF0000
highlight IncSearch ctermfg=0 ctermbg=9 guifg=#000000 guibg=#FF0000
highlight Search ctermfg=0 ctermbg=3 guifg=#000000 guibg=#FF0000


":set fillchars+=vert:\ 

