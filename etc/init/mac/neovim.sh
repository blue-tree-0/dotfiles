#!/bin/bash

if !(type "nvim" > /dev/null 2>&1); then
  echo "install neovim"
  brew install nvim
fi

echo "installed nvim"
