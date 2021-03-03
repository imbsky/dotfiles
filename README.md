# dotfiles

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/smorimoto/dotfiles/Main%20workflow?style=flat-square)](https://github.com/smorimoto/dotfiles/actions)

## Installation instructions

### Base

```bash
sudo xbps-install -Suy bzip2-devel curl delta fish-shell gcc ghq gnupg jemalloc-devel libquadmath-devel libressl-devel libxml2-devel make ncurses-libtinfo-devel peco rcm readline-devel sqlite-devel starship wget zlib-devel
chsh -s /usr/bin/fish
git clone git@github.com:smorimoto/dotfiles.git $HOME/src/github.com/smorimoto/dotfiles
RCRC=$HOME/src/github.com/smorimoto/dotfiles/rcrc rcup
git clone git@github.com:asdf-vm/asdf.git $HOME/.asdf
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
CFLAGS='-O2' PYTHON_CONFIGURE_OPTS='--enable-optimizations --with-lto' asdf install python <VERSION>
CFLAGS='-O2' RUBY_CONFIGURE_OPTS='--with-jemalloc' asdf install ruby <VERSION>
asdf install
curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install decors/fish-ghq && fisher install oh-my-fish/plugin-peco
```

### Add .gitconfig.local

```bash
touch ~/.gitconfig.local
```

```conf
[sendemail]
smtpPass = <PASSWORD>
```
