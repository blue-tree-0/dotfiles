if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=$HOME/dotfiles/nvim

let s:dein_dir = expand('$HOME/.config/nvim/dein/')
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

runtime! config/*.vim
runtime! dein/config/*.vim