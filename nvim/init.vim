if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim
let g:python3_host_prog = expand('$HOME') . '/.pyenv/shims/python'
let s:dein_dir = expand('$HOME/dotfiles/nvim/dein')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('$HOME/dotfiles/nvim/dein/')
  "ロード
  call dein#load_toml(s:toml_dir . 'dein.toml', {'lazy': 0})
  "遅延ロード
  call dein#load_toml(s:toml_dir . 'dein_lazy.toml', {'lazy': 1})
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

" yank
set clipboard+=unnamed
" key map
nmap <Esc><Esc> :nohl<CR>
let mapleader = ","
tnoremap <Esc> <C-\><C-n>

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
if (has("nvim"))
  set termguicolors
endif

syntax on
set background=dark
colorscheme one

filetype on
