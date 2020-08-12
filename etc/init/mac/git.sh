#!/bin/bash

if !(type "git" > /dev/null 2>&1); then
  echo "install git"
  brew install git
fi

echo "installed git"
