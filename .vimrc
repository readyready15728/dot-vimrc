" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'agude/vim-eldar'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug 'scrooloose/nerdtree'
Plug 'vim-latex/vim-latex'
Plug 'ycm-core/YouCompleteMe'
Plug 'tmux-plugins/vim-tmux'
Plug 'wlangstroth/vim-racket'
Plug 'petRUShka/vim-sage'
Plug 'elixir-editors/vim-elixir'
Plug 'vim-python/python-syntax'
Plug 'luochen1990/rainbow'
Plug 'Shirk/vim-gas'
Plug 'readyready15728/vim-asm-indent'
Plug 'jez/vim-better-sml'
Plug 'fsharp/vim-fsharp'
Plug 'mitsuhiko/vim-jinja'
Plug 'chr4/nginx'
Plug 'dag/vim-fish'
Plug 'vim-perl/vim-perl'
Plug 'tpope/vim-fugitive'
Plug 'cwshugg/dwarrowdelf'

call plug#end()

" General
set t_Co=256
set termguicolors
set encoding=utf-8
filetype plugin indent on
syntax enable
colorscheme dwarrowdelf
" Transparent background
highlight normal guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE

" File Type Handling
autocmd BufRead,BufNewFile * setfiletype text
autocmd FileType text setlocal autoindent textwidth=78 formatoptions+=n
autocmd FileType markdown setlocal textwidth=78
autocmd FileType tex setlocal textwidth=78
autocmd FileType make setlocal noexpandtab
autocmd BufRead,BufNewFile *.sc set filetype=scala
autocmd FileType racket setlocal lisp
set modeline
let g:tex_flavor = 'latex' "← Required by LaTeX-Suite
let g:Tex_Folding = 0
let g:Imap_UsePlaceHolders = 0
let g:jsx_ext_required = 0
let g:python_highlight_all = 1
let g:rainbow_active = 1
let g:ycm_show_diagnostics_ui = 0
let g:asmsyntax = 'nasm'
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
let g:markdown_recommended_style = 0
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "helptags " . g:opamshare . "/merlin/vim/doc"
execute "set rtp^=" . g:opamshare . "/ocp-indent/vim/"

" Debugging
" set verbose=9
" set verbosefile=~/.vim/verbose.log

" Indentation
set expandtab shiftwidth=2 tabstop=2
set shiftround
autocmd FileType python setlocal shiftwidth=4 tabstop=4 " Four spaces is considered best practices for Python

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
set nofoldenable
" Needed this on Ubuntu with DigitalOcean
noremap! <C-?> <C-h>
