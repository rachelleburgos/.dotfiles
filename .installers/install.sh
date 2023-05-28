#!/bin/sh

# Homebrew Script for OSx
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

# Abort on error
set -e

echo "Checking if Homebrew is already installed...";

# Checks if Homebrew is installed
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi

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
brew install git
brew install lazygit
brew install docker
brew install neovim
brew install gdb
brew install yarn
brew install node
brew install googletest
brew install wget
brew install ripgrep
brew install tmux
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
brew install --cask github
brew install --cask visual-studio-code


# Web Tools
echo "Installing web tools..."
brew install --cask firefox

# Other Tools
echo "Installing some other tools..."
brew install --cask skim
brew install --cask alttab
echo "Installing Alfred dmg file to $HOME/Downloads/"
curl -L "https://cachefly.alfredapp.com/Alfred_5.1_2134.dmg" -o "$HOME/Downloads/Alfred_5.1_2134.dmg" # Download Alfred 5 to $HOME/Downloads

# Update and Upgrade
echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup
