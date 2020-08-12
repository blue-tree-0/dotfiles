#!/bin/bash

if !(type "tmux" > /dev/null 2>&1); then
  echo "install tmux"
  brew install tmux
fi

echo "installed tmux"
