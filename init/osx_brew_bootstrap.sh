#!/bin/bash

# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
brew install bash-completion

# Install wget with IRI support
brew install wget --enable-iri

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
#brew install ringojs
#brew install narwhal

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
#brew tap josegonzalez/homebrew-php
#brew install php54

#brew install homebrew/dupes/screen

# Install everything else
#brew install ack
#brew install exiv2
brew install git
#brew install imagemagick
#brew install lynx
#brew install node
#brew install rename
#brew install rhino
#brew install tree
#brew install webkit2png
brew install make

mkdir -p ~/Applications
brew linkapps
# Remove outdated versions from the cellar
brew cleanup