#!/bin/bash

if [ ! -d ${ZDOTDIR:-$HOME}/.zprezto ]; then
  echo "install zprezto"
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

echo "installed zprezto"
