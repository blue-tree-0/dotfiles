#!/bin/bash

if !(type "brew" > /dev/null 2>&1); then
  echo "install homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update
fi

echo "installed homebrew"


echo "prerequisites pyenv"
brew install readline xz

# font
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo mv -f MesloLGS\ NF\ Regular.ttf /System/Library/Fonts/