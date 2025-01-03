# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew colorize direnv docker encode64 fluxcd fzf git gpg-agent gradle helm iterm2 kubectl macos mvn nmap node npm nvm rsync screen sdk sudo terraform vagrant vscode yarn)
fi
source $ZSH/oh-my-zsh.sh
