" Vundle
runtime vundle.vim

" General
set t_Co=256
set termguicolors
set encoding=utf-8
filetype plugin indent on
syntax enable
colorscheme eldar

" File Type Handling
autocmd BufRead,BufNewFile * setfiletype text
autocmd FileType text setlocal autoindent textwidth=78 formatoptions+=n
autocmd FileType markdown setlocal textwidth=78
autocmd FileType tex setlocal textwidth=78

" Debugging
" set verbose=9
" set verbosefile=~/.vim/verbose.log

" Indentation
set expandtab shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

" Backup
set backup backupdir=./.backup,.
" The double quotes are here to ensure this works with paths that include
" spaces
autocmd BufWrite * silent execute '!mkdir -p "' . expand('<afile>:h') . '/.backup"'

" Everything Else
set incsearch hlsearch ignorecase smartcase
set backspace=eol,start,indent whichwrap+=<,>
set mouse=a
set nowrap
set lazyredraw
set showmatch matchtime=4
set visualbell
set ruler
set wildmenu wildignore+=.git/*,.backup/*
set cmdheight=2
let g:jsx_ext_required = 0
