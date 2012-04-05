#!/bin/bash
cd "$(dirname "$0")"
git pull

function reset() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  reset
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    reset
  fi
fi
unset reset

source ~/.bash_profile
