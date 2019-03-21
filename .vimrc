if &compatible
  set nocompatible               
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  "ロード
  call dein#load_toml('~/.cache/dein/dein.toml', {'lazy': 0})
  "遅延ロード
  call dein#load_toml('~/.cache/dein/dein_lazy.toml', {'lazy': 1})
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


" color
syntax on
"colorscheme iceberg
set background=dark
colorscheme solarized

filetype on
