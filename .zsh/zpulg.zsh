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
