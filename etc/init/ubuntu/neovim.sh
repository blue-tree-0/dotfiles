#!/bin/bash

if !(type "nvim" > /dev/null 2>&1); then
  echo "install neovim"
  sudo apt install -y software-properties-common
  sudo add-apt-repository ppa:neovim-ppa/stable -y
  sudo apt update
  sudo apt install -y neovim
fi

echo "installed neovim"
