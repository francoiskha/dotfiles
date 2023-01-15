# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(1password aws brew bundler colorize direnv docker encode64 gem git gpg-agent gradle iterm2 knife kubectl macos mvn nmap node npm nvm rbenv ruby rvm rsync screen sdk sudo vagrant vault vscode)
else
	plugins=(aws bundler colorize docker gem git gradle jira knife mvn npm ruby rvm safe-paste sdk sudo vagrant vault ufw)
fi
source $ZSH/oh-my-zsh.sh
