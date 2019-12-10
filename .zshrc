export XDG_CONFIG_HOME=$HOME/dotfiles
export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# load zsh
for file (~/dotfiles/.zsh/*.zsh){ source $file }

autoload -U compinit && compinit
