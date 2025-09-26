" vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'LunarWatcher/auto-pairs'
Plug 'Shirk/vim-gas'
Plug 'agude/vim-eldar'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'andymass/vim-matchup'
Plug 'chr4/nginx'
Plug 'cwshugg/dwarrowdelf'
Plug 'dag/vim-fish'
Plug 'dense-analysis/ale'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-editors/vim-elixir'
Plug 'flazz/vim-colorschemes'
Plug 'fsharp/vim-fsharp'
Plug 'jelera/vim-javascript-syntax'
Plug 'jez/vim-better-sml'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'leafgarland/typescript-vim'
Plug 'luochen1990/rainbow'
Plug 'mitsuhiko/vim-jinja'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'petRUShka/vim-sage'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'readyready15728/vim-asm-indent'
Plug 'romainl/vim-cool'
Plug 'roman/golden-ratio'
Plug 'scrooloose/nerdtree'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-latex/vim-latex'
Plug 'vim-perl/vim-perl'
Plug 'vim-python/python-syntax'
Plug 'wlangstroth/vim-racket'
Plug 'ycm-core/YouCompleteMe'

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

" " LSP
" let lsp_opts = #{autoHighlightDiags: v:true}
" autocmd User LspSetup call LspOptionsSet(lsp_opts)
" 
" let lsp_servers = [ #{
"       \   name: 'pyright',
"       \   filetype: ['python'],
"       \   path: '/snap/bin/pyright-langserver',
"       \   args: ['--stdio'],
"       \   workspaceConfig: #{
"       \     python: #{
"       \       pythonPath: '/usr/bin/python'
"       \     }}
"       \ }]
" 
" autocmd User LspSetup call LspAddServer(lsp_servers)

" Debugging
"
" set verbose=9
" set verbosefile=~/.vim/verbose.log

" Indentation
set expandtab shiftwidth=2 tabstop=2
set shiftround
autocmd FileType python setlocal shiftwidth=4 tabstop=4 " Four spaces is considered best practices for Python

" Non-Specific Keybindings
let mapleader = "\<Space>"
" Needed this on Ubuntu with DigitalOcean
noremap! <C-?> <C-h>

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
map <Leader>n :NERDTreeToggle<CR>

" fzf
let g:fzf_layout = { 'down': '~40%' }
nnoremap <Leader><Leader> :Files<cr>

" vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.tsx'

" vim-gitgutter
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=NONE ctermbg=NONE

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
set splitbelow splitright
