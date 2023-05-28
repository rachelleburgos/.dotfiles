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
curl -L "https://cachefly.alfredapp.com/Alfred_5.1_2134.dmg" -o "$HOME/Downloads/Alfred_5.1_2134.dmg" # Download Alfred 5 to $HOME/Downloads
