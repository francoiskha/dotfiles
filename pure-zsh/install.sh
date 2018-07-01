#!/bin/bash
if [[ ! -f "$PWD/pure-zsh/prompt_pure_setup " ]]
then
	echo "Installing pure-zsh for you."
	git clone --depth 1 https://github.com/sindresorhus/pure.git $HOME/.pure-zsh
	dos2unix $HOME/.pure-zsh/async.zsh
	dos2unix $HOME/.pure-zsh/pure.zsh
	ln -s $HOME/.pure-zsh/async.zsh $PWD/pure-zsh/async
	ln -s $HOME/.pure-zsh/pure.zsh $PWD/pure-zsh/prompt_pure_setup 
fi
