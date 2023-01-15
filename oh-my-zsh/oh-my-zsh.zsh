# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew bundler colorize docker gem git gpg-agent gradle helm knife kubectl macos mvn npm ruby rvm sdk sudo terraform vagrant vault)
else
	plugins=(aws bundler colorize docker gem git gradle jira knife mvn npm ruby rvm safe-paste sdk sudo vagrant vault ufw)
fi
source $ZSH/oh-my-zsh.sh
