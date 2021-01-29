#!/bin/sh
# Clone dotfiles in to workspace
mkdir -p $HOME/workspace
git clone https://github.com/hoango7604/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles

# Restore runtime config
while read f; do
  echo "Copying file $f..."
  cp -rf $f ~/
done < Dotfiles

echo "Restore dotfiles done!"
