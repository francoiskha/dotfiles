#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

if [[ "$(uname -s)" == "Darwin" ]];
then
	# Check for Homebrew
	if test ! $(which brew)
	then
	  echo "  Installing Homebrew for you."
	  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
	fi

	# Install homebrew packages
	brew_installs.sh

	exit 0
fi