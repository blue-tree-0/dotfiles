#ls
alias ls='ls -G'
alias l='ls'
alias la='ls -al'

# rm
alias rm='rm -i'

# cd
alias ..='cd ..'
alias c='cd'

#vim
alias vi='nvim -u NONE -N'
alias v='nvim'

# jupyter
alias j='jupyter notebook'

#homebrew
export PATH="/usr/local/sbin:$PATH"

#powerline
function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

export PYTHONDONTWRITEBYTECODE=1
alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"
