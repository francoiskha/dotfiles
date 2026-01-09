# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew colorize docker encode64 fluxcd fzf git gpg-agent gradle helm iterm2 kubectl macos mise mvn nmap node npm nvm rsync screen sdk sudo terraform vagrant vscode yarn)
fi
source $ZSH/oh-my-zsh.sh
