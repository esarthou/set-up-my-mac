#!/bin/bash

echo Starting automated app installer.

# Either use mas-cli (https://github.com/argon/mas) or install manually; apps I need: Bear/Simplenote, Tyme, Polarr, Pixelmator, JPEGmini.
read -p "Press any key to continue… " -n1 -s
echo '\n'

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade --all

# Install my brew packages
brew install wget
brew install git
brew install ffmpeg
brew install htop
brew install youtube-dl
brew install speedtest-cli
brew install imagemagick
brew install python3
brew install node
brew install mas


# Install cask
brew tap phinze/homebrew-cask

# Install desired cask packages
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install postman
brew cask install gitkraken
brew cask install spectacle
brew cask install slack
brew cask install sublime-text
brew cask install iterm2
brew cask install spotify


# Remove brew cruft
brew cleanup

# Remove cask cruft
brew cask cleanup

# Installs Harvest 
mas install 506189836