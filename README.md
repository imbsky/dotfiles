# dotfiles

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/imbsky/dotfiles/Main%20workflow?style=flat-square)](https://github.com/imbsky/dotfiles/actions)

## Installation instructions

### Base

```bash
git clone https://github.com/imbsky/dotfiles $HOME/src/github.com/imbsky/dotfiles
```

```bash
RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcup
```

### Common

#### Install nanorc

```bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
```

#### Install fisher

```bash
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
```

#### Install fisher packages

```bash
fisher add rafaelrinaldi/pure
fisher add decors/fish-ghq
fisher add oh-my-fish/plugin-peco
```

```bash
defaults write -g com.apple.mouse.scaling -1
```
