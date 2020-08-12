FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    wget \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/dotfiles
COPY . /root/dotfiles
CMD ["/bin/bash"]