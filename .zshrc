# load powerline theme
source ~/dotfiles/.zsh/powerline_theme.zsh

# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=25'
zplug "zsh-users/zsh-completions"
zplug "RobSis/zsh-completion-generator"
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme


#Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# load alias
source ~/dotfiles/.zsh/alias.zsh

# dotfiles
export XDG_CONFIG_HOME=$HOME/dotfiles

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
export PYTHONDONTWRITEBYTECODE=1


# emacs
export PATH=/usr/local/bin:$PATH

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
