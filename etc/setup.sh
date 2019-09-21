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

function install_or_update_brew() {
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

function install_or_update_nanorc() {
  function download_nanorc() {
    echo "🚧 Downloading nanorc..."
    curl --silent --location --output "$HOME/src/github.com/imbsky/dotfiles/nanorc" -C - "https://raw.githubusercontent.com/scopatz/nanorc/master/nanorc" || fail "Could not download nanorc!"
  }

  if [ -d "$HOME/.nano" ]; then
    echo "🚧 Updating nanorc..."
    cd "$HOME/.nano"
    git pull >/dev/null || fail "Could not pull latest master branch!"
    download_nanorc
  else
    echo "🚧 Cloning nanorc..."
    git clone https://github.com/scopatz/nanorc ~/.nano >/dev/null || fail "Could not clone nanorc repository!"
    download_nanorc
  fi
}

function setup() {
  if is_macos; then
    echo -e "🏃 Setting up my \e[34mmacOS\e[m environment..."
    install_or_update_brew
    install_or_update_nanorc
  else
    echo -e "🏃 Setting up my \e[33mLinux\e[m environment..."
    echo "🚧 WIP!"
  fi
  echo "🏁 Done!"
}

setup
