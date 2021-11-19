#!/bin/sh

case "$(uname -s)" in
    Darwin)
        echo "Installing mac packages"
        brew install git
    ;;
    Linux)
        echo "Removing files"
        
        echo "Installing linux packages"
        apt-get install -y \
            curl \
            fonts-powerline
    ;;
esac

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Change Shell
# chsh -s $(which zsh) $USERNAME

# Move files
cat .zshrc > $HOME/.zshrc
cat .zprofile > $HOME/.zprofile
cat .p10k.zsh > $HOME/.p10k.zsh

cat .aliases > $HOME/.aliases
cat .exports > $HOME/.exports
cat .gitignore > $HOME/.gitignore
cat .gitconfig > $HOME/.gitconfig
