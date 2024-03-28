alias reload!='. ~/.zshrc'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias publicdn='dig +short myip.opendns.com @resolver1.opendns.com | xargs dig +short -x'
alias sp="source $DOTFILES/zsh/prompt.zsh"
alias encrypt="gpg -r 9E45E71B --encrypt-files"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	alias pbcopy='xsel -ib'
fi

translate(){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }
compress(){ 7z a -t7z $(date +%Y%m%d_%H%M)-$1.7z -m0=lzma2 -mx=9 -aoa -mfb=64 -md=32m -ms=on $1 ; }
