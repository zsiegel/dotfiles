#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew install grep
brew install git
brew install wget
brew install curl
brew install yarn
brew install fastlane
brew install bash
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8 adoptopenjdk12 adoptopenjdk14
brew install JakeWharton/repo/dockerfile-shebang

# Remove outdated versions from the cellar.
brew cleanup