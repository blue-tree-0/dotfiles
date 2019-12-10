# depend os
case ${OSTYPE} in
	darwin*)
		alias ls="ls -G"
	;;
	linux*)
		alias ls="ls --color=auto"
	;;
esac

#ls
alias l="ls -lh"
alias la="ls -alh"

# rm
alias rm="rm -i"

# cd
alias ..="cd .."
alias c="cd"

#nvim
if type "nvim"> /dev/null 2>&1; then
	alias vim="nvim"
fi
alias vi="vim -u NONE -N"
alias v="vim"

# brew
if type "brew" > /dev/null 2>&1; then
	alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"
fi

# clang-format
if type "clang-format"> /dev/null 2>&1; then
	alias clang-format="clang-format -i -style=file"
fi

# g++
if type "g++-9"> /dev/null 2>&1; then
	alias g++="g++-9 -std=gnu++14 -O2 -Wall -Werror"
elif type "g++"> /dev/null 2>&1; then
	alias g++="g++ -std=gnu++1y -O2 -Wall -Werror"
fi

# ssh tensorboard
alias sshL="ssh -L 8888:localhost:6006"
