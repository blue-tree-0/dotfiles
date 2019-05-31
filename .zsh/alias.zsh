#ls
alias ls='ls -G'
alias l='ls -lh'
alias la='ls -alh'

# rm
alias rm='rmtrash'

# cd
alias ..='cd ..'
alias c='cd'

#nvim
alias vim='nvim'
alias vi='vim -u NONE -N'
alias v='vim'

#jupyter
alias j='jupyter notebook'

# brew
alias brew="env PATH=${PATH/${HOME}\/\.pyenv\/shims:/} brew"

# clang-format
alias clang-format="clang-format -i -style=file"

# emacs
alias emacs='emacs -nw'

# pip
alias pip='pip3'
