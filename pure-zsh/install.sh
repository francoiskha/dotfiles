#!/bin/bash
if [[ ! -f "$HOME/.zsh/pure" ]]
then
	echo "Installing pure-zsh for you."
	mkdir -p "$HOME/.zsh"
	git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi
