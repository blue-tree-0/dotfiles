#!/bin/bash

if !(type "tmux" > /dev/null 2>&1); then
  echo "install tmux"
  sudo apt install -y tmux
fi

echo "installed tmux"
