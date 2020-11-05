#!/bin/bash

echo " Starting automated app installer. "

echo " First we go through CLI tools. " 

echo "  Installing Homebrew for you."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# mas is only necessary for apps that are restricted to be downloaded from the appstore
brew install mas

# Install XCode CLI developer tools
xcode-select --install

# To install an app using mas we need to get the apps ID on the appstore. example:
# Installs XCode 
mas install 497799835

# Update any existing homebrew recipes
# brew update

# Upgrade any already installed formulae
# brew upgrade --all

# Install my brew packages
brew install wget
brew install git
brew install ffmpeg
brew install htop
brew install speedtest-cli
brew install imagemagick
brew install python3
brew install nvm
brew install awscli
brew install vim
brew install eslint
brew install gimme-aws-creds

# Node version we're currently using at work
nvm install 12.16.1

echo Now moving on to UI apps

# Install cask
brew tap phinze/homebrew-cask

# Install desired cask packages
brew cask install google-chrome
brew cask install brave-browser
brew cask install visual-studio-code
brew cask install postman
brew cask install github
brew cask install spectacle
brew cask install slack
brew cask install sublime-text
brew cask install iterm2
brew cask install spotify
brew cask install authy
brew cask install phpstorm
brew cask install beekeeper-studio
brew cask install zoom
