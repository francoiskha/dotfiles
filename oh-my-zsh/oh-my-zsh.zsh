# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(brew bundler docker gem gpg-agent git knife mvn npm osx ruby rvm sudo vagrant)
else
	plugins=(bundler docker gem git jira knife mvn npm ruby rvm sudo vagrant)
fi
source $ZSH/oh-my-zsh.sh