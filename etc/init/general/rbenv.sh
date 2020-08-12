#!/bin/bash

RBENV_ROOT=${HOME}/.rbenv

if !(type "rbenv" > /dev/null 2>&1); then
  echo "install rbenv"
  git clone https://github.com/rbenv/rbenv.git ${RBENV_ROOT}
  mkdir -p ${RBENV_ROOT}/plugins
  git clone https://github.com/rbenv/ruby-build.git ${RBENV_ROOT}/plugins/ruby-build
fi

echo "installed rbenv"
