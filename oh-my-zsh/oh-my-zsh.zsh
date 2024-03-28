# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew colorize direnv docker encode64 fluxcd git gpg-agent gradle helm iterm2 kubectl macos mvn nmap node npm nvm rsync ripgrep screen sdk sudo terraform vagrant vault vscode yarn)
fi
source $ZSH/oh-my-zsh.sh
