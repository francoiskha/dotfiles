# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(aws brew bundler docker gem gpg-agent git knife mvn npm osx ruby rvm sdk sudo vagrant vault)
else
	plugins=(autoenv aws bundler docker gem git jira knife mvn npm ruby rvm safe-paste sdk sudo vagrant vault)
fi
source $ZSH/oh-my-zsh.sh