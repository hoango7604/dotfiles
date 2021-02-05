#!/bin/sh
# Clone dotfiles in to workspace
git clone https://github.com/hoango7604/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles

# Restore runtime config
while read f; do
  echo "Copying file $f..."
  cp -rf ./config/$f ~/
done < Dotfiles

echo "Restore dotfiles done!"
