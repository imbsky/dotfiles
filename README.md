# dotfiles

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/smorimoto/dotfiles/Main%20workflow?style=flat-square)](https://github.com/smorimoto/dotfiles/actions)

## Installation instructions

### Base

```bash
git clone git@github.com:smorimoto/dotfiles.git $HOME/src/github.com/smorimoto/dotfiles
```

```bash
sudo xbps-install -Sy fish-shell rcm ghq peco
chsh -s /usr/bin/fish
```

```bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
asdf plugin add direnv https://github.com/asdf-community/asdf-direnv.git
```

```bash
RCRC=$HOME/src/github.com/smorimoto/dotfiles/rcrc rcup
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
