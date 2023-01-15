#!/bin/zsh
[ -n $(command -v nerdctl) ] && ( nerdctl completion zsh > $(brew --prefix)/share/zsh/site-functions/_nerdctl )