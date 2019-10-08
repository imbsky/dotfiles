#!/usr/bin/env bash

function warn() {
  echo -e "\e[33mWarn:\e[m $* 😱"
}

function fail() {
  echo -e "\e[31mFail:\e[m $* 😭"
  exit 1
}

function is_macos() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    true
  elif [[ "$OSTYPE" == "linux"* ]]; then
    false
  else
    fail "Unsupported platform..."
  fi
}

function install_or_update_brew() {
  if [ is_macos ]; then
    if [ -x "$(type -p brew)" ]; then
      warn "Brew is already installed!"
    else
      echo "🚧 Installing brew..."
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &>/dev/null || fail "Could not install brew"
    fi
  fi
}

function install_fish() {
  if [ $(echo $SHELL) == $(which bash) ]; then
    brew install fish &>/dev/null
    echo "/usr/local/bin/fish" | sudo tee -a /etc/shells &>/dev/null
    sudo chsh -s /usr/local/bin/fish &>/dev/null
  else
    warn "Fish is already set as your default shell!"
  fi
}

function install_or_update_fisher() {
  if [ -f "$HOME/.config/fish/functions/fisher.fish" ]; then
    echo "🚧 Updating all fisher packages..."
    (
      fish <<EOF
        fisher
EOF
    ) &>/dev/null || fail "Could not update fisher packages!"
  else
    echo "🚧 Downloading fisher..."
    curl --silent --location --create-dirs --output "$HOME/.config/fish/functions/fisher.fish" "https://git.io/fisher" || fail "Could not download fisher"
    echo "🚧 Installing fisher packages..."
    (
      fish <<EOF
        fisher add matchai/spacefish
        fisher add decors/fish-ghq
        fisher add oh-my-fish/plugin-peco
EOF
    ) || fail "Could not install fisher packages"
  fi
}

function install_asdf() {
  if [ -x "$(type -p asdf)" ]; then
    warn "asdf is already installed!"
  else
    echo "🚧 Installing asdf..."
    brew install asdf &>/dev/null
  fi
}

function install_or_update_nanorc() {
  function download_nanorc() {
    echo "🚧 Downloading nanorc..."
    curl --silent --location --create-dirs --output "$HOME/.nanorc" "https://raw.githubusercontent.com/scopatz/nanorc/master/nanorc" || fail "Could not download nanorc"
  }

  if [ -d "$HOME/.nano" ]; then
    echo "🚧 Updating nanorc..."
    cd "$HOME/.nano"
    git pull &>/dev/null || fail "Could not pull latest master branch"
    download_nanorc
  else
    echo "🚧 Cloning nanorc..."
    git clone https://github.com/scopatz/nanorc $HOME/.nano &>/dev/null || fail "Could not clone nanorc repository"
    download_nanorc
  fi
}

function install_rcm() {
  if [ -x "$(type -p lsrc)" ]; then
    warn "rcm is already installed!"
  else
    echo "🚧 Installing rcm..."
    brew tap thoughtbot/formulae &>/dev/null
    brew install rcm &>/dev/null
  fi
}

function setup() {
  if [ -z "$GITHUB_WORKFLOW" ]; then
    # Ask for the administrator password upfront
    sudo -v || fail "Could not get the administrator password!"

    # Keep-alive: update existing `sudo` time stamp until this script has finished
    while true; do
      sudo -n true
      sleep 600
      kill -0 "$$" || exit
    done 2>/dev/null &
  fi

  if [ is_macos ]; then
    echo -e "🏃 Setting up your \e[34mmacOS\e[m environment..."
    install_or_update_brew
    install_asdf
    install_fish
    install_or_update_fisher
    install_or_update_nanorc
    install_rcm
  else
    echo -e "🏃 Setting up your \e[33mLinux\e[m environment..."
    echo "🚧 WIP!"
  fi
  warn "🏁 Done. Note that some of these changes require a logout/restart to take effect!"
}

setup
