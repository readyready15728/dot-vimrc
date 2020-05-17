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
Plugin 'zxqfl/tabnine-vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'sevko/vim-nand2tetris-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
