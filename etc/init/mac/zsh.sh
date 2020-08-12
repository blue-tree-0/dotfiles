#!/bin/bash

if !(type "zsh" > /dev/null 2>&1); then
  echo "install zsh"
  brew install zsh
fi

echo "installed zsh"
