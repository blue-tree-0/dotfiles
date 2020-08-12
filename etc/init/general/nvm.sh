#!/bin/bash

if !(type "nvm" > /dev/null 2>&1) || !(type "node" > /dev/null 2>&1); then
  echo "install nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
fi

echo "installed nvm"