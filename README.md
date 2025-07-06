# NVIM Config Files

These files are here to customise my (Matt Hooper) Neovim config. Please enjoy
:)

## Setup

Follow the steps below to install nvim with this configuration. This assumes
you are using a fedora system, otherwise please change the install commands
as necessary.

0.  Install nvim: Install the text editor.

    > sudo dnf install neovim

1.  Install vim-plug: Simply run the below command.

    > curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    >    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

2.  Clone this repo to .config/nvim.
3.  Install dependancies for finding and grepping.

    > sudo dnf install ripgrep
    > sudo dnf install fd-find

4.  Install pyright.

    > npm install -g pyright

5.  Open Neovim and run:

    > :PlugInstall

6.  Close and reopen Neovim and run:

    > :TSInstall html
    > :TSInstall latex
    > :TSInstall <any language you use>

