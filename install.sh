#!/usr/bin/env bash

echo "Adding configs"
ln -sf ~/dotties/tmux.conf ~/.tmux.conf
ln -sf ~/dotties/vimrc ~/.vimrc
ln -sf ~/dotties/bash_profile ~/.bash_profile
ln -sf ~/dotties/bashrc ~/.bashrc
ln -sf ~/dotties/gitignore ~/.gitignore

echo "Setting up git ignore"
git config --global core.excludesfile ~/.gitignore

echo "Sweet, all ready."
