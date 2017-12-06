#!/bin/sh

git clone --depth 1 git@github.com:sindresorhus/pure.git $HOME/.pure-zsh
ln -s $HOME/.pure-zsh/async.zsh $DOTFILES/pure-zsh/async
ln -s $HOME/.pure-zsh/pure.zsh $DOTFILES/pure-zsh/prompt_pure_setup 
