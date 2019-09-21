#!/usr/bin/env bash

source $HOME/src/github.com/imbsky/dotfiles/etc/utils.sh

function install_or_update_brew() {
  function brew_bundle() {
    echo "🚧 Installing brew stuff..."
    brew bundle install --file="$HOME/src/github.com/imbsky/dotfiles/etc/homebrew/Brewfile" >/dev/null || fail "Could not install brew stuff"
  }

  if is_macos; then
    if [ -x "$(type -p brew)" ]; then
      warn "Brew is already installed!"
      brew_bundle
    else
      echo "🚧 Installing brew..."
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" >/dev/null || fail "Could not install brew"
      brew_bundle
    fi
  fi
}

function install_or_update_fisher() {
  if [ -f "$HOME/.config/fish/functions/fisher.fish" ]; then
    echo "🚧 Downloading fisher..."
    curl --silent --location --create-dirs --output "$HOME/.config/fish/functions/fisher.fish" "https://git.io/fisher" || fail "Could not download fisher"
    echo "🚧 Installing fisher packages..."
    (
      fish <<EOF
        fisher add matchai/spacefish >/dev/null
        fisher add decors/fish-ghq >/dev/null
        fisher add oh-my-fish/plugin-peco >/dev/null
EOF
    ) || fail "Could not install fisher packages"
  else
    echo "🚧 Update all fisher packages"
    (
      fish <<EOF
        fisher >/dev/null
EOF
    ) || fail "Could not update fisher packages!"
  fi
}

function install_or_update_nanorc() {
  function download_nanorc() {
    echo "🚧 Downloading nanorc..."
    curl --silent --location --create-dirs --output "$HOME/src/github.com/imbsky/dotfiles/nanorc" "https://raw.githubusercontent.com/scopatz/nanorc/master/nanorc" || fail "Could not download nanorc"
  }

  if [ -d "$HOME/.nano" ]; then
    echo "🚧 Updating nanorc..."
    cd "$HOME/.nano"
    git pull >/dev/null || fail "Could not pull latest master branch"
    download_nanorc
  else
    echo "🚧 Cloning nanorc..."
    git clone https://github.com/scopatz/nanorc $HOME/.nano >/dev/null || fail "Could not clone nanorc repository"
    download_nanorc
  fi
}

function setup() {
  if is_macos; then
    echo -e "🏃 Setting up my \e[34mmacOS\e[m environment..."
    install_or_update_brew
    install_or_update_fisher
    install_or_update_nanorc
  else
    echo -e "🏃 Setting up my \e[33mLinux\e[m environment..."
    echo "🚧 WIP!"
  fi
  echo "🏁 Done!"
}

setup
