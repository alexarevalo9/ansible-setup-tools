#!/usr/bin/env bash

DIR_1=$1
DIR_2=$2

function config {
  /usr/bin/git --git-dir=$DIR_1 --work-tree=$DIR_2 $@
}

mkdir -p .config-backup

config stash
config checkout

if [ $? = 0 ]; then
  echo "Checked out config."
else
  echo "Backing up pre-existing dot files."
  config clean -ndX | awk '{print $3}' | xargs -I{} mkdir -p .config-backup/$(dirname {}) && mv {} .config-backup/{}
  config checkout
fi

config stash apply
config config status.showUntrackedFiles no
