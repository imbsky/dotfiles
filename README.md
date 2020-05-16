# dotfiles

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/imbsky/dotfiles/Main%20workflow?style=flat-square)](https://github.com/imbsky/dotfiles/actions)

## Installation instructions

### Base

```bash
git clone https://github.com/imbsky/dotfiles $HOME/src/github.com/imbsky/dotfiles
```

```bash
sudo apt install gpg software-properties-common
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish rcm
chsh -s /usr/bin/fish
```

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
asdf plugin add direnv https://github.com/asdf-community/asdf-direnv.git
asdf plugin add ghq https://github.com/kajisha/asdf-ghq.git
asdf plugin add peco https://github.com/ryodocx/asdf-peco.git
```

```bash
RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcup
```

### Install nanorc

```bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
```

### Install fisher

```bash
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
```

### Install fisher packages

```bash
fisher add rafaelrinaldi/pure
fisher add decors/fish-ghq
fisher add oh-my-fish/plugin-peco
```
