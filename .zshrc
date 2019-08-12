# load powerline theme
source ~/dotfiles/.zsh/powerline_theme.zsh

# zplug
source ~/dotfiles/.zsh/zpulg.zsh

# load alias
source ~/dotfiles/.zsh/alias.zsh

# dotfiles
export XDG_CONFIG_HOME=$HOME/dotfiles

#pyenv
if type "pyenv" > /dev/null 2>&1; then
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:$PATH"
	if command -v pyenv 1>/dev/null 2>&1; then
		eval "$(pyenv init -)"
	fi
	eval "$(pyenv virtualenv-init -)"
	export PYTHONDONTWRITEBYTECODE=1
fi

# rbenv
if type "rbenv" > /dev/null 2>&1; then
	eval "$(rbenv init -)"
fi
