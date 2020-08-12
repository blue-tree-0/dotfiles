#!/bin/bash

ln -sfnv ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -sfnv ~/dotfiles/nvim/dein/dein.toml ~/.config/nvim/dein/dein.toml
ln -sfnv ~/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

exec $SHELL -l