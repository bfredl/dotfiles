#!/bin/bash

# Initialize and update all submodules.
echo Initializing git submodules.
git submodule init && git submodule update

# Remove all dotfiles from the home directory if present.
echo Removing any existing dotfiles from your home directory.
rm -rf ~/.vim ~/.vimrc ~/.bashrc ~/.bash_profile ~/.inputrc ~/.gitconfig ~/.shell_prompt.sh ~/.tmux.conf ~/.tmux_theme ~/.tmux ~/.config/fish/config.fish

# Initialize symlinks.
echo Creating symlinks in your home directory that point to this dotfiles repository.
ln -s "$PWD/.vim" ~/.vim
ln -s "$PWD/.vim/vimrc" ~/.vimrc
mkdir -p ~/.config/fish
ln -s "$PWD/.config.fish" ~/.config/fish/config.fish
ln -s "$PWD/.bashrc" ~/.bashrc
ln -s "$PWD/.bash_profile" ~/.bash_profile
ln -s "$PWD/.inputrc" ~/.inputrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
ln -s "$PWD/.shell_prompt.sh" ~/.shell_prompt.sh
ln -s "$PWD/.tmux.conf" ~/.tmux.conf
ln -s "$PWD/.tmux_theme" ~/.tmux_theme
ln -s "$PWD/.tmux" ~/.tmux

# Finished.
echo Dotfiles installation complete.
