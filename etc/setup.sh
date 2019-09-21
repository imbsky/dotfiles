#!/usr/bin/env bash

source ./utils.sh

function is_macos() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    true
  elif [[ "$OSTYPE" == "linux"* ]]; then
    false
  else
    fail "Unsupported platform"
  fi
}

function install_brew() {
  echo "🚧 Installing brew and brew stuff..."

  function brew_bundle() {
    echo "🚧 Installing brew stuff..."
    brew bundle install --file="$HOME/src/github.com/imbsky/dotfiles/etc/homebrew/Brewfile" >/dev/null || fail "Could not install brew stuff!"
  }

  if is_macos; then
    if [ -x "$(type -p brew)" ]; then
      warn "Brew is already installed!"
      brew_bundle
    else
      echo "🚧 Installing brew..."
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" >/dev/null || fail "Could not install brew!"
      brew_bundle
    fi
  fi
}

function setup() {
  if is_macos; then
    echo -e "🏃 Setting up my \e[34mmacOS\e[m environment..."
    install_brew
  else
    echo -e "🏃 Setting up my \e[33mLinux\e[m environment..."
    echo "🚧 WIP!"
  fi
  echo "🏁 Done!"
}

setup
