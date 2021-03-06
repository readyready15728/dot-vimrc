set nocompatible              " be iMproved, required
filetype off                  " required
" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'agude/vim-eldar'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-latex/vim-latex'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'wlangstroth/vim-racket'
Plugin 'petRUShka/vim-sage'
Plugin 'elixir-editors/vim-elixir'
Plugin 'vim-python/python-syntax'
Plugin 'luochen1990/rainbow'
Plugin 'Shirk/vim-gas'
Plugin 'readyready15728/vim-asm-indent'
Plugin 'jez/vim-better-sml'
Plugin 'fsharp/vim-fsharp'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'chr4/nginx'
Plugin 'dag/vim-fish'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
