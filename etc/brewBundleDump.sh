#!/usr/bin/env bash

function fail() {
  echo -e "\e[31mFail:\e[m $* 😭"
  exit 1
}

function brewBundleDump() {
  echo "Running brew bundle dump..."
  brew bundle dump --file="$HOME/src/github.com/imbsky/dotfiles/etc/homebrew/Brewfile" || fail "Could not dump brew stuff!"
  echo "🏁 Done!"
}

brewBundleDump
