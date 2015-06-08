# using homebrew version of openssh, this a caveat
eval $(ssh-agent) >/dev/null

function cleanup {
	kill -9 $SSH_AGENT_PID
}

trap cleanup EXIT