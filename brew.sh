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
brew install gradle
brew install cmake
brew install openssl
brew install pidcat
brew install s3cmd
brew install sqlite
brew install valgrind
brew install wget
brew install wrk
brew install yarn
brew install imagemagick
brew install jq
brew install mysql
brew install lua
brew install go
brew install clang clang-format

# Remove outdated versions from the cellar.
brew cleanup