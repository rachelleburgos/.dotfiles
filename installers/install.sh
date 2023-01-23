#!/bin/sh

# Homebrew Script for OSx
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap homebrew/cask

# Programming Languages
echo "Installing programming languages..."
brew install typescript
brew install sass
brew install --cask mactex

# Dev Tools
echo "Installing dev tools..."
brew install bash
brew install fish
brew install git
brew install docker
brew install neovim
brew install gdb
brew install yarn
brew install node
brew install googletest
brew install wget
brew install ripgrep
brew install --cask github
brew install --cask visual-studio-code


# Web Tools
echo "Installing web tools..."
brew install --cask firefox

# Other Tools
echo "Installing some other tools..."
brew install --cask sioyek
brew install --cask alttab
