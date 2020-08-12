#!/bin/bash

if !(type "git" > /dev/null 2>&1); then
  echo "install git"
  sudo apt install -y git
fi

echo "installed git"
