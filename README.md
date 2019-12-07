# dotfiles

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/imbsky/dotfiles/Main%20workflow?style=flat-square)](https://github.com/imbsky/dotfiles/actions)

## Initial setup

```bash
echo 'nix' | sudo tee -a /etc/synthetic.conf

# Reboot

sudo diskutil apfs addVolume disk1 APFSX Nix -mountpoint /nix
sudo diskutil enableOwnership /nix
sudo chflags hidden /nix
echo "LABEL=Nix /nix apfs rw" | sudo tee -a /etc/fstab

curl https://nixos.org/nix/install | sh
```

```bash
echo /Users/imbsky/.nix-profile/bin/fish | sudo tee -a /etc/shells
chsh -s /Users/imbsky/.nix-profile/bin/fish
```

```bash
# Clone this repository
git clone https://github.com/imbsky/dotfiles $HOME/src/github.com/imbsky/dotfiles

# Install the dotfiles
env RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcup
```

```bash
fisher add decors/fish-ghq
fisher add lilyball/nix-env.fish
fisher add oh-my-fish/plugin-peco
```

## Configure environment variables for Chromium

```bash
launchctl setenv GOOGLE_API_KEY <key>
launchctl setenv GOOGLE_DEFAULT_CLIENT_ID <id>
launchctl setenv GOOGLE_DEFAULT_CLIENT_SECRET <secret>
```
