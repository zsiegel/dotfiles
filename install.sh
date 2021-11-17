#!/bin/sh

# Install packages
sudo apt-get install -y \
    fonts-powerline \
    zsh

# Change Shell
chsh -s /usr/bin/zsh $USERNAME

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Move files
cat .zshrc > $HOME/.zshrc
cat .zprofile > $HOME/.zprofile
cat .p10k.zsh > $HOME/.p10k.zsh

cat .aliases > $HOME/.aliases
cat .exports > $HOME/.exports
cat .gitignore > $HOME/.gitignore
cat .gitconfig > $HOME/.gitconfig
