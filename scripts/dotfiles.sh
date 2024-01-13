#!/usr/bin/env bash

DIR_1=$1
DIR_2=$2

function config {
  /usr/bin/git --git-dir=$DIR_1 --work-tree=$DIR_2 $@
}

mkdir -p .config-backup

config checkout

if [ $? = 0 ]; then
  echo "Checked out config."
else
  echo "Backing up pre-existing dot files."
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} bash -c 'mkdir -p .config-backup/$(dirname {}) && mv {} .config-backup/{}'
fi

config checkout
config config status.showUntrackedFiles no
