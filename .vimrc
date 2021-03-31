set nocompatible
filetype off
set shellslash " Windows-only, converts unix style slash separators

let g:netrw_liststyle=3 " tree view

set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

Plugin 'VundleVim/Vundle.vim'
" Plugin 'vim-syntactic/syntactic'
Plugin 'hdima/python-syntax'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'preservim/nerdcommenter'
"Plugin 'beautify-web/js-beautify'
Plugin 'rhysd/vim-clang-format'
"Plugin 'cdelledonne/vim-cmake'
Plugin 'vhdirk/vim-cmake'
Plugin 'skywind3000/asyncrun.vim' 
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set encoding=utf-8
set cursorline
colorscheme codedark

set wildmenu

set hlsearch
set incsearch
set ignorecase

set expandtab
set tabstop=4
set shiftwidth=4
set number
set autoindent

set cursorline

set cinoptions+=g0 "C++ formatting, see :help cino-g

let python_highlight_all = 1
syntax on
"
" highlight search text with yellow background and black foreground
hi Search ctermfg=Black
hi Search ctermbg=Yellow

"highlight special characters, use :set list / :set nolist to toggle on / off
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

"gVIM Windows settings only
if has("gui_running")
  set guifont=Consolas:h16
  set laststatus=2
  set pythonthreedll=python37.dll
endif

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

cd d:/Projects/TappyPotatoCpp " default directory

set guioptions-=L " disable vertical scrollbar
set guioptions-=T " disable gVim toolbar
set colorcolumn=90
highlight ColorColumn ctermbg=darkgray

imap jk <Esc>
set backspace=2

" automatically set Unity shaders to be hightlited as *.cpp files
autocmd BufNewFile,BufRead *.shader set syntax=cpp
