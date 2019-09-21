#!/usr/bin/env bash

source $HOME/src/github.com/imbsky/dotfiles/etc/utils.sh

function brewBundleDump() {
  echo "Running brew bundle dump..."
  brew bundle dump --file="$HOME/src/github.com/imbsky/dotfiles/etc/homebrew/Brewfile" >/dev/null || fail "Could not dump brew stuff!"
  echo "🏁 Done!"
}

brewBundleDump
