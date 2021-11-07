#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install grep git wget curl fastlane JakeWharton/repo/dockerfile-shebang pyenv openjdk@11

# Remove outdated versions from the cellar.
brew cleanup