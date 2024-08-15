#!/bin/bash

######## Zsh stuff ########
echo "Getting Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Getting PowerLevel 10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo "Getting Syntax Highlighting for zsh"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Getting zsh-autosuggestions for zsh"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "plugins=(git zsh-syntax-highlighting zsh-autosuggestions)" >>$HOME/.zshrc

echo "Sourcing Powerlevel10k"
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

echo "Sourcing zshrc"

echo "Adding z for zsh"
git clone https://github.com/agkozak/zsh-z.git
echo "source ~/.oh-my-zsh/zsh-z/zsh-z.plugin.zsh" >>$HOME/.zshrc

source .zshrc

######## Tmux  Stuff... ########

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Copy the .tmux.conf from the repo to home and"
Echo "use 'tmux source .tmux.conf' to source the new config file"
