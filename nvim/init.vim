" Specify leader
let mapleader = "-"

" Line numbers
set number

" Plugins
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'

call plug#end()

"Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent

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

" Code view
set nowrap

" Undo directory
set undodir=~/.local/share/nvim/undodir
set undofile

set noerrorbells

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Colors
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme gruvbox
set background=dark

" CTRLP
let g:ctrlp_map = '<NUL>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_use_caching = 0

" make backspace work
set backspace=indent,eol,start

set nofoldenable    " disable folding

" Fix fast shift exiting
command! Wq :wq
command! W :w
command! Q :q

