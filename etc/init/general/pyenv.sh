#!/bin/bash

PYENV_ROOT=${HOME}/.pyenv
PYENV_VIRTUAL=${PYENV_ROOT}/plugins/pyenv-virtualenv



if !(type "pyenv" > /dev/null 2>&1); then
  echo "install pyenv"
  git clone https://github.com/pyenv/pyenv.git ${PYENV_ROOT}
fi

echo "installed pyenv"

if !(type "pyenv virtualenvs" > /dev/null 2>&1); then
  echo "install pyenv-virtualenv"
  git clone https://github.com/pyenv/pyenv-virtualenv.git ${PYENV_VIRTUAL}
fi

echo "installed pyenv-virtualenv"