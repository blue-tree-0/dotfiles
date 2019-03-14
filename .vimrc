if &compatible
  set nocompatible               
endif

set runtimepath+=/Users/blue/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/blue/.cache/dein')
  call dein#begin('/Users/blue/.cache/dein')

  call dein#add('/Users/blue/.cache/dein/repos/github.com/Shougo/dein.vim')
  "ロード
  call dein#load_toml('/Users/blue/.cache/dein/dein.toml', {'lazy': 0})
  "遅延ロード
  call dein#load_toml('/Users/blue/.cache/dein/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif


set display=lastline
set pumheight=10
set showmatch
set matchtime=1
set number
set hlsearch
nmap <Esc><Esc> :nohl<CR>
set tabstop=4
set cindent
set shiftwidth=4
set title
set wildmenu
set history=5000
set mouse=a
set laststatus=2
let mapleader = ","

syntax on
"colorscheme iceberg
set background=dark
colorscheme solarized

filetype on
