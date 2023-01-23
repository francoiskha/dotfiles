#!/bin/sh
# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.
if [[ "$(uname -s)" == "Darwin" ]]
then

    # Disable press-and-hold for keys in favor of key repeat.
    defaults write -g ApplePressAndHoldEnabled -bool false

    # Always open everything in Finder's column view. (list == Nlsv)
    defaults write com.apple.Finder FXPreferredViewStyle clmv

    # Show the ~/Library folder.
    chflags nohidden ~/Library

    # Set a really fast key repeat.
    defaults write NSGlobalDomain KeyRepeat -int 0

    # Set the Finder prefs for showing a few different volumes on the Desktop.
    defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
    defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

    # Hide Safari's bookmark bar.
    defaults write com.apple.Safari ShowFavoritesBar -bool false

    # Disable .DS_Store generation in network shares
    defaults write com.apple.desktopservices DSDontWriteNetworkStores true

    defaults write com.apple.screencapture location "~/Pictures/captures/"
    defaults write com.apple.screencapture name "capture"
fi
