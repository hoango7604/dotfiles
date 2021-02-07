#!/bin/sh
# Pull latest config of dotfiles
cd ~/dotfiles
git pull

# Restore runtime config
while read f; do
  echo "Copying file $f..."
  cp -rf ./config/$f ~/
done < Dotfiles

echo "Restore dotfiles done!"
