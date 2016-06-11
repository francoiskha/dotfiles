#!/bin/sh
# Source : https://github.com/alrra/dotfiles/blob/master/os/os_x/install_applications.sh

# Homebrew Formulae
# https://github.com/Homebrew/homebrew
declare -a HOMEBREW_FORMULAE=(
"autoenv"
"autojump"
"bonnie++"
"caskroom/cask/brew-cask"
"coreutils"
"docker"
"docker-machine"
"docker-compose"
"git"
"gnupg2"
"grc"
"keybase"
"maven"
"pstree"
"spark"
"ssh-copy-id"
"wget"
"youtube-dl"
)

# Homebrew Casks
# https://github.com/caskroom/homebrew-cask
declare -a HOMEBREW_CASKS=(
	"calibre"
	"dropbox"
	"jumpcut"
	"logitech-myharmony"
	"nicecast"
	"path-finder"
	"skype"
	"textexpander"
	"vagrant"
	"virtualbox"
	"vlc"
)
# excluded :

# Outdated versions
# gpgtools
# sublime-text
# quicksilver

# using alpha release
# keepassx

if [ $(cmd_exists "brew") -eq 0 ]; then
	execute "brew update" "brew [update]"
	execute "brew upgrade" "brew [upgrade]"
	execute "brew cleanup" "brew [cleanup]"

	# Homebrew formulae
	for i in ${!HOMEBREW_FORMULAE[*]}; do
		tmp="${HOMEBREW_FORMULAE[$i]}"
		[ $(brew list "$tmp" &> /dev/null; printf $?) -eq 0 ] \
		&& print_success "$tmp" \
		|| execute "brew install $tmp" "$tmp"
	done
	printf "\n"

	# Homebrew casks
	if [ $(brew list brew-cask &> /dev/null; printf $?) -eq 0 ]; then
		for i in ${!HOMEBREW_CASKS[*]}; do
			tmp="${HOMEBREW_CASKS[$i]}"
			[ $(brew cask list "$tmp" &> /dev/null; printf $?) -eq 0 ] \
				&& print_success "$tmp" \
				|| execute "brew cask install $tmp" "$tmp"
		done
	printf "\n"
fi