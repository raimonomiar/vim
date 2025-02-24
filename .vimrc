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
set showmode

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

" F2 to toggle paste mode on/off
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-0> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Set max textwidth that will auto wrap
set textwidth=79

" How text is automatically formatted
set formatoptions=tcqrn1

" Set \t spaces
set tabstop=4

" Set spaces used for indentations
set shiftwidth=4

" Set spaces for in insert and remove backspace
set softtabstop=4

" Converts tab to spaces
set expandtab

" Useful when working with mixed indentation
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Set showmode
set showmode

" Highlight matching pairs of brackets
set matchpairs+=<:>

" Display different type of white spaces
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Store info from no more than 100 files at a time,
set viminfo='100,<9999,s100

" Fold the cold block open/close
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Set background
set background=dark

" Set colorscheme
colorscheme jellybeans
