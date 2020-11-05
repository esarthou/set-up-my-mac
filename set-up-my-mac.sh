#!/bin/bash

echo Starting automated app installer.

echo First we'll go through CLI tools

# Install XCode CLI developer tools
xcode-select --install

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
brew install speedtest-cli
brew install imagemagick
brew install python3
brew install nvm
brew install awscli
brew install vim
brew install eslint


# mas is only necessary for apps that are restricted to be downloaded from the appstore
# brew install mas

# Node version we're currently using at work
nvm install 12.16.1

# Install aws credentials handler
pip3 install --upgrade gimme-aws-creds

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


# Remove brew cruft
brew cleanup

# Remove cask cruft
brew cask cleanup

# To install an app using mas we need to get the app's ID on the appstore. example:
# Installs XCode 
mas install 497799835
