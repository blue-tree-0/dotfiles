#!/bin/bash

if !(type "zsh" > /dev/null 2>&1); then
  echo "install zsh"
  sudo apt install -y zsh
fi

echo "installed zsh"