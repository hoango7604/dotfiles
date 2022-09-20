#!/bin/sh

git pull origin master
while read f; do
  echo "Backup file $f..."
  cp -RLf $HOME/$f ./config
done < Dotfiles
echo "Backup files done, please commit!"

git add . -A
git commit -m "Backup at $(date)"
git push origin master
