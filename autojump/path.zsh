if [[ "$(uname -s)" == "Darwin" ]]
then
	[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi
