export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYTHONDONTWRITEBYTECODE=1

if type "pyenv" > /dev/null 2>&1; then
  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
  fi
  eval "$(pyenv virtualenv-init -)"
fi
pyenv rehash