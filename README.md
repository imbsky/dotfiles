<div align="center">
<h1>dotfiles 🗃</h1>
My dotfiles
</div>
<hr />

🚧 Work in Progress

# Initial setup (macOS)

```bash
# Clone this repository
git clone https://github.com/imbsky/dotfiles $HOME/src/github.com/imbsky/dotfiles

# Run setup script
bash $HOME/src/github.com/imbsky/dotfiles/etc/setup.sh

# Run configure script
bash $HOME/src/github.com/imbsky/dotfiles/etc/macos/configure.sh

# Install the dotfiles
env RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcup
```

# Update configuration

```bash
# Change directory to this repository's directory
cd $HOME/src/github.com/imbsky/dotfiles

# Pull the latest master branch
git pull

# Run setup script
bash $HOME/src/github.com/imbsky/dotfiles/etc/setup.sh

# Re-install the dotfiles
env RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcup
```

# Uninstall the dotfiles

```bash
# Uninstall the dotfiles
env RCRC=$HOME/src/github.com/imbsky/dotfiles/rcrc rcdn
```
