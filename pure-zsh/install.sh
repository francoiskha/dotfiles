#!/bin/bash
if [[ ! "$PWD/pure-zsh/prompt_pure_setup " ]]
then
	echo "Installing pure-zsh for you."
	git clone --depth 1 git@github.com:sindresorhus/pure.git $HOME/.pure-zsh
	ln -s $HOME/.pure-zsh/async.zsh $PWD/pure-zsh/async
	ln -s $HOME/.pure-zsh/pure.zsh $PWD/pure-zsh/prompt_pure_setup 
fi