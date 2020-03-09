if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/dotfiles/nvim/dein/repos/github.com/Shougo/dein.vim
let g:python3_host_prog = expand('$HOME') . '/.pyenv/shims/python'
let $PATH='/usr/local/opt/llvm/bin:'.$PATH
let s:dein_dir = expand('$HOME/dotfiles/nvim/dein/')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:dein_dir . 'dein.toml', {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" read setting file
runtime! config/*.vim
runtime! dein/config/*.vim

" key map
nmap <Esc><Esc> :nohl<CR>
let mapleader = ","
tnoremap <Esc> <C-\><C-n>

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.c setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
