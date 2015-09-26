#! /bin/bash
echo
echo "Backingup files to this folder..."
echo "===================================================================================================="
echo 
cp -v ~/.gitconfig gitconfig 
cp -v ~/.gitignore_global gitignore_global
cp -v ~/.gvimrc gvimrc
cp -v ~/.vimrc vimrc
cp -v ~/.zshrc zshrc 
echo

