#!/bin/bash

os=""
kernel_name=""

kernel_name="$(uname -s)"

if [ "$kernel_name" == "Darwin" ]; then
  os="mac"
else
  os="ubuntu"
fi

for file in util.sh git.sh zsh.sh tmux.sh neovim.sh
do
  bash "./etc/init/$os/$file"
done

for file in prezto.sh nvm.sh pyenv.sh pyenv-virtualenv.sh rbenv.sh dein.sh
do
  bash "./etc/init/general/$file"
done

chsh -s $(which zsh)