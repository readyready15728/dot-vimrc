" Vundle
runtime vundle.vim

" General
set t_Co=256
set termguicolors
set encoding=utf-8
filetype plugin indent on
syntax enable
colorscheme eldar

autocmd BufRead,BufNewFile * setfiletype text
autocmd FileType text setlocal autoindent textwidth=78 formatoptions+=n
autocmd FileType tex setlocal textwidth=78

" Debugging
" set verbose=9
" set verbosefile=~/.vim/verbose.log

" Indenting
set expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4

" Backup
set backup
set backupdir=./.backup,.
" The double quotes are here to ensure this works with paths that include
" spaces
autocmd BufWrite * silent execute '!mkdir -p "' . expand('<afile>:h') . '/.backup"'

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>

" Miscellaneous
set mouse=a
set nowrap
set lazyredraw
set showmatch matchtime=4 
set visualbell
let g:jsx_ext_required = 0
