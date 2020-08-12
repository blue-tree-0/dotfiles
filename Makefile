DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .git .gitignore
DOTFILES   := $(sort $(filter-out $(EXCLUSIONS), $(CANDIDATES)))

all: init deploy

init:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init/main.sh

deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/deploy.sh