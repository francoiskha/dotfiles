# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew bundler colorize docker gem git gpg-agent gradle knife mvn npm osx ruby rvm sdk sudo vagrant vault)
else
	plugins=(autoenv aws bundler colorize docker gem git gradle jira knife mvn npm ruby rvm safe-paste sdk sudo vagrant vault ufw)
fi
source $ZSH/oh-my-zsh.sh