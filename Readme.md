# Setting up everything

## Zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Powerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

then

$ source .zshrc

to configure the look

### Syntax Highlighting

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### Autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

### Add them to the .zshrc

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

### Z for zsh

git clone https://github.com/agkozak/zsh-z.git

and add "source" to the zsh-z.plugin.zsh file to .zshrc.

## Kitty

$ kitten theme

Will open up the color scheme selector.

## Tmux

Install Tmux Plugin manager

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Inside tmux,
$ tmux source .tmux.conf

### Vim-tmux navigator

https://github.com/christoomey/vim-tmux-navigator

And install the same thing for vim..?

### Tmuxifier

git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

## Other useful tools

* Tree
* Ncdu
* fd
* fzf
* yazi
* fish
* nvim
* tldr
* bat

## LazyVim

Just copy the config folder?
