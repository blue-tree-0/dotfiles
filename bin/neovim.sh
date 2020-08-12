pyenv install 3.7.7
pyenv global 3.7.7

pip install -U \
  black \
  flake8 \
  pynvim \
  python-language-server \

nvm install node
nvm use node

nvim -c 'q'
nvim -c 'UpdateRemotePlugins' -c 'q'
nvim -c 'CocInstall -sync coc-highlight coc-json coc-python' -c 'q' -c 'q'