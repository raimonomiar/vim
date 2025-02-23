" Set compatibility to Vim only
set nocompatible

" Automatically wrap text that exteds beyond the screen length
set wrap

" Encoding
set encoding=utf-8

" Show line numbers
set number

" Status bar
set laststatus=2

" Show command in status line
set showcmd

" Show matching bracket
set showmatch

" Do case insensitve matching
set ignorecase

" Show matching words as you type
set incsearch

" Show warning if not saved
set hidden

" Helps force plug-ins to load correctly when it is turned back on below
filetype off

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

" Turn on sytax highlighting
syntax on

" For plug-ins to load correctly
filetype plugin indent on

" Turn off modelines
set modelines=0

