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
if type "rmtrash" > /dev/null 2>&1; then
	alias rm="rmtrash"
else
	alias rm="rm -i"
fi

# cd
alias ..="cd .."
alias c="cd"

#nvim
if type "nvim"> /dev/null 2>&1; then
	alias vim="nvim"
fi
alias vi="vim -u NONE -N"
alias v="vim"

#jupyter
alias j="jupyter notebook"

# brew
if type "brew" > /dev/null 2>&1; then
	alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"
fi

# clang-format
if type "clang-format"> /dev/null 2>&1; then
	alias clang-format="clang-format -i -style=file"
fi

# g++
if type "g++"> /dev/null 2>&1; then
	alias g++="g++ -std=c++11 -O2 -Wall -Wnon-virtual-dtor -Woverloaded-virtual"
fi
