<div align="center">
<h1>dotfiles 🗃</h1>
My dotfiles
</div>
<hr />

[![Main workflow](https://github.com/imbsky/dotfiles/workflows/Main%20workflow/badge.svg)](https://github.com/imbsky/dotfiles/actions)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![License](https://img.shields.io/github/license/imbsky/dotfiles?color=brightgreen)](https://github.com/imbsky/dotfiles/blob/master/LICENSE)

## Initial setup

```bash
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

```bash
# Clone this repository
git clone https://github.com/imbsky/dotfiles $HOME/src/github.com/imbsky/dotfiles

# Install the dotfiles
env RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcup
```

## Configure environment variables for Chromium

```bash
launchctl setenv GOOGLE_API_KEY <key>
launchctl setenv GOOGLE_DEFAULT_CLIENT_ID <id>
launchctl setenv GOOGLE_DEFAULT_CLIENT_SECRET <secret>
```
