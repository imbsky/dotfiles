# dotfiles

[![Main workflow](https://github.com/imbsky/dotfiles/workflows/Main%20workflow/badge.svg)](https://github.com/imbsky/dotfiles/actions)

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
