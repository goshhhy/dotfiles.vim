set nocompatible              " be iMproved, required
filetype off                  " required

set shell=/usr/bin/fish
set rtp+=~/.vim/bundle/Vundle.vim

set mouse=a
set splitbelow
set termwinsize=10x0

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdtree'
Plugin 'sickill/vim-monokai'
Plugin 'peterhoeg/vim-qml'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'ziglang/zig.vim'

call vundle#end()
filetype plugin indent on    " required

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | exe 'Minimap' | exe 'term' | endif

let g:airline#extensions#tabline#enabled = 1

syntax enable
colorscheme monokai
