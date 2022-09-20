#!/bin/sh

cd ~/dotfiles
# Pull latest config of dotfiles
git pull

# Restore runtime config
while read f; do
  echo "Copying file $f..."
  cp -RLf ./config/$f ~/
done < Dotfiles

echo "Restore dotfiles done!"
