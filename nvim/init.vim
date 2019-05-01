if &compatible
  set nocompatible               
endif

set runtimepath+=~/dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/dotfiles/nvim/dein')
  call dein#begin('~/dotfiles/nvim/dein')

  call dein#add('~/dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim')
  "ロード
  call dein#load_toml('~/dotfiles/nvim/dein/dein.toml', {'lazy': 0})
  "遅延ロード
  call dein#load_toml('~/dotfiles/nvim/dein/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif


" display
set number
set cursorline
set laststatus=2
set showmatch
set matchtime=1
set helpheight=999
set display=lastline
set title
set pumheight=10

" cursor
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]

" deep
set visualbell t_vb=
set noerrorbells

" file
set noswapfile
set nobackup
set hidden
set autoread
set confirm

" search/replace
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan
set gdefault

" cmd
set wildmenu
set history=5000

"operating env 
set mouse=a

" tab/space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent 
set smartindent
set cindent

" key map
nmap <Esc><Esc> :nohl<CR>
let mapleader = ","

" encode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set binary
set bomb

" auto comment off
augroup auto_comment_off
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
augroup END

" fast scroll 
set ttyfast

" reflect time
set updatetime=250

" color
syntax on
set background=dark
colorscheme solarized

filetype on
