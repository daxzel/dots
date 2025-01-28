"======= BASIC SETTINGS START =======

" Specify leader
let mapleader = "-"

" Line numbers
set number

" make backspace work
set backspace=indent,eol,start

set nofoldenable    " disable folding

set noerrorbells

"======= BASIC SETTINGS END =======


"======= PLUGIN MANAGEMENT START =======

" Plugins
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'

Plugin 'jremmen/vim-ripgrep'

Plugin 'tpope/vim-fugitive'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'valloric/youcompleteme'

Plugin 'mbbill/undotree'

call vundle#end()

filetype plugin indent on

"======= PLUGIN MANAGEMENT END =======


"======= INDENTATION AND FORMATTING START =======

"Tabs
set tabstop=4

set softtabstop=4

set shiftwidth=4

set shiftround

set expandtab

set smartindent

" Code view
set nowrap

" Easier moving of code blocks
vnoremap < <gv " better indentation

vnoremap > >gv " better indentation

"======= INDENTATION AND FORMATTING END =======


"======= SEARCH SETTINGS START =======

" Make search case insensitive
set hlsearch

set incsearch

set ignorecase

set smartcase

"======= SEARCH SETTINGS END =======


"======= FILE MANAGEMENT START =======

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup

set nowritebackup

set noswapfile

" Undo directory
set undodir=~/.vim/undodir

set undofile

"======= FILE MANAGEMENT END =======


"======= APPEARANCE START =======

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

au InsertLeave * match ExtraWhitespace /\s\+$/

" Colors
syntax on

set t_Co=256

colorscheme gruvbox

set background=dark

"======= APPEARANCE END =======


"======= CTRLP PLUGIN SETTINGS START =======

" CTRLP
let g:ctrlp_map = '<NUL>'

let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:ctrlp_use_caching = 0

"======= CTRLP PLUGIN SETTINGS END =======


"======= COMMAND ALIASES START =======

" Fix fast shift exiting
command! Wq :wq

command! W :w

command! Q :q

"======= COMMAND ALIASES END =======
