# NVIM Config Files

These files are here to customise my (Matt Hooper) Neovim config. Please enjoy
:)

## Setup

Follow the steps below to install nvim with this configuration. This assumes
you are using a fedora system, otherwise please change the install commands
as necessary.

0.  Install nvim: Install the text editor and the dependancies of the plugins.

    > sudo dnf install neovim ripgrep fd-find libtexprintf-tools tree-sitter-cli

1.  Install vim-plug: Simply run the below command.

    > curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    >    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

2.  Clone this repo to ~/.config/nvim.

4.  Install pyright.

    > npm install -g pyright

5.  Open Neovim and run:

    > :PlugInstall

6.  Close and reopen Neovim and run:

    > :TSInstall html
    > :TSInstall latex
    > :TSInstall yaml
    > :TSInstall <any language you use>

