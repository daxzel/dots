" Specify leader
let mapleader = "-"

" Line numbers
set number

" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Colors
syntax on
set t_Co=256
color wombat256mod

" load up the nerd tree
autocmd vimenter * NERDTree
map <Leader>t <plug>NERDTreeTabsToggle<CR>
" move nerdtree to the right
let g:NERDTreeWinPos = "right"
" move to the first buffer
autocmd VimEnter * wincmd p


