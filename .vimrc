" Vundle
runtime vundle.vim

" General
set t_Co=256
set termguicolors
set encoding=utf-8
filetype plugin indent on
syntax enable
colorscheme eldar
" Transparent background
highlight normal guibg=NONE ctermbg=NONE

" File Type Handling
autocmd BufRead,BufNewFile * setfiletype text
autocmd FileType text setlocal autoindent textwidth=78 formatoptions+=n
autocmd FileType markdown setlocal textwidth=78
autocmd FileType tex setlocal textwidth=78
autocmd FileType make setlocal noexpandtab
autocmd BufRead,BufNewFile *.sc set filetype=scala
autocmd FileType racket setlocal lisp
let g:tex_flavor = 'latex' "← Required by LaTeX-Suite
let g:Tex_Folding = 0
let g:Imap_UsePlaceHolders = 0
let g:jsx_ext_required = 0
let g:python_highlight_all = 1
let g:rainbow_active = 1
let g:asmsyntax = 'nasm'

" Debugging
" set verbose=9
" set verbosefile=~/.vim/verbose.log

" Indentation
set expandtab shiftwidth=2 tabstop=2
set shiftround
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
set ruler number
set laststatus=2
set cmdheight=2
set wildmenu wildignore+=.git/*,.backup/*
set dictionary=/usr/share/dict/words
