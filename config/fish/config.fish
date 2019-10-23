# Starship
starship init fish | source

# Homebrew
set -x PATH /usr/local/sbin $PATH

# asdf version manager
source /usr/local/opt/asdf/asdf.fish

# opam initialization
source ~/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true

# LLVM
set -x PATH /usr/local/opt/llvm/bin $PATH

# Go
set -x GOPATH ~/go
set -x PATH $GOPATH/bin $PATH
set -x GO111MODULE on

# Java
set -x JAVA_HOME (asdf where java)

# SDKROOT
set -x SDKROOT (env DEVELOPER_DIR=/Library/Developer/CommandLineTools xcrun --sdk macosx --show-sdk-path)
