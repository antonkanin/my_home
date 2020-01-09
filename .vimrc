set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'vim-syntactic/syntactic'
Plugin 'hdima/python-syntax'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

set cursorline

set wildmenu

set hlsearch
set incsearch
set ignorecase

set expandtab
set tabstop=4
set number
set autoindent

set cursorline

let python_highlight_all = 1
syntax on
