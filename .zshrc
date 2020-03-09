# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export XDG_CONFIG_HOME=$HOME/dotfiles
export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

for file (~/dotfiles/.zsh/*.zsh){ source $file }

autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=2