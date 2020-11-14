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
curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher
```

### Install fisher packages

```bash
fisher install decors/fish-ghq
fisher install oh-my-fish/plugin-peco
```

### Add .gitconfig.local

```bash
touch ~/.gitconfig.local
```

```conf
[sendemail]
smtpPass = <PASSWORD>
```
