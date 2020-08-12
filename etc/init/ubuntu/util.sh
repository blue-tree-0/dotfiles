#!/bin/bash

sudo apt update

echo "prerequisites pyenv"
sudo DEBIAN_FRONTEND="noninteractive" apt install -y \
    build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git


# font
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo mv -f MesloLGS\ NF\ Regular.ttf /usr/share/fonts/