# oh-my-zsh specifics
export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="agnoster"
if [[ "$(uname -s)" == "Darwin" ]]
then
	plugins=(brew bundler gem gpg-agent git knife mvn npm osx ruby rvm sublime sudo vagrant vim)
else
	plugins=(bundler gem git knife mvn node npm ruby rvm sudo vagrant vim)
fi
source $ZSH/oh-my-zsh.sh