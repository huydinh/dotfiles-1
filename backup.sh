#!/bin/bash

cp ~/.gitconfig .
cp ~/.vimrc .
cp ~/.gvimrc .
cp ~/.autotest .
cp ~/.ackrc .
cp ~/.inputrc .
cp ~/.zshrc .
cp ~/.gemrc .
cp ~/.rdebugrc .
cp -R ~/.vim/ .

git status
git add .
if ["$1" != ""]; then
  git commit -am "$1"
  git push origin master
fi
