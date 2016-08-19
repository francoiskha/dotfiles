alias reload!='. ~/.zshrc'
alias igrep='grep -i'
alias grepi='igrep'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias publicdn='dig +short myip.opendns.com @resolver1.opendns.com | xargs dig +short -x'
alias sp="source $DOTFILES/zsh/prompt.zsh"
alias agnoster="source $ZSH/themes/agnoster.zsh-theme"
alias docker-machine="docker-machine --native-ssh" # waiting a fix for https://github.com/docker/machine/issues/1591
alias encrypt="gpg -r 44772227 --encrypt-files"

translate(){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }