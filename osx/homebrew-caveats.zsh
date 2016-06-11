if [[ "$(uname -s)" == "Darwin" ]]
then
	# using homebrew version of openssh, this a caveat
	eval $(ssh-agent) >/dev/null

	function cleanup {
		kill -9 $SSH_AGENT_PID
	}
	trap cleanup EXIT

	export GROOVY_HOME=/usr/local/opt/groovy/libexec

	[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi