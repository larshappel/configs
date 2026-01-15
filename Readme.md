# Setting up everything

## Zsh

sh -c "$(curl -fsSL <https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh>)"

if backspace is trouble in SSH/Zsh (maybe due to kitty) try
export TERM=xterm

### Powerlevel10k

git clone --depth=1 <https://github.com/romkatv/powerlevel10k.git> ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

then

$ source .zshrc

to configure the look

### Syntax Highlighting

git clone <https://github.com/zsh-users/zsh-syntax-highlighting.git> ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### Autosuggestions

git clone <https://github.com/zsh-users/zsh-autosuggestions> ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

### Add them to the .zshrc

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

### Z for zsh

git clone <https://github.com/agkozak/zsh-z.git>

and add "source" to the zsh-z.plugin.zsh file to .zshrc.

## Kitty

$ kitten theme

Will open up the color scheme selector.

## Tmux

1. Install Tmux Plugin manager
git clone <https://github.com/tmux-plugins/tpm> ~/.tmux/plugins/tpm
2. Copy over the `.tmux.conf`
3. Inside tmux:
$ tmux source .tmux.conf
or just
leader -> Shift-I (install and reload)

### Vim-tmux navigator

<https://github.com/christoomey/vim-tmux-navigator>

And install the same thing for vim..?

### Tmuxifier

git clone <https://github.com/jimeh/tmuxifier.git> ~/.tmuxifier

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

It might be necessary to install "build-essential"
`sudo apt install build-essential`
this is to be able to compile c for some of the addons.
Note that stuff like "fzf" also needs to be installed. It's a program that Nvim relies on.

After this you'll need to install your necessary language server.
`:Mason` in nvim gives a list.

Do yourself a favor and use intelephense for PHP. In `options.lua` it's just
`vim.g.lazyvim_php_lsp = "intelephense"` and then in lua/config/lsp.lua the
things from this config repo.
It's a lot better than phpactor which comes with LazyVim.

## Xserver
Refer to [the xserveraccess guide](xserveraccess.md)

## PHPCS

There's a hidden file, `.phpcs.xml` in the root directory.
It contains settings to make the PHP linter/formatter a little bit less
annoying by increasing the line length at which it starts complaining.

This will also remove all the other formatting errors regarding brackets, since
they're not part of the custom ruleset!

## Dungeon Crawl

Is it important? No. But:
In the Dungeon Crawl - Console directory, `Resources/settings`
there is the `init.txt` file on Mac OS.
Here, add `use_terminal_default_colours = true` and it'll have the right colors
even in kitty terminal. Also, run the `crawl` file from `Resources/`, not the
file with the long name in the `MacOS/` directory.

Source: <https://tavern.dcss.io/t/solved-color-scheme-likely-a-foreground-issue/669>
