# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew bundler colorize docker gem git gpg-agent gradle helm knife kubectl mvn npm osx ruby rvm sdk sudo vault)
else
	plugins=(aws bundler colorize docker gem git gradle helm jira knife kubectl mvn npm ruby rvm safe-paste sdk sudo terraform vault ufw)
fi
source $ZSH/oh-my-zsh.sh