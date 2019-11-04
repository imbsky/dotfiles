# Starship
starship init fish | source

# asdf version manager
source /usr/local/opt/asdf/asdf.fish

# direnv
direnv hook fish | source
set -x DIRENV_LOG_FORMAT

# Brew
set -x PATH /usr/local/sbin $PATH

# LLVM
set -x PATH /usr/local/opt/llvm/bin $PATH

# opam initialization
source ~/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true

# Go
set -x GOPATH ~/go
set -x PATH $GOPATH/bin $PATH
set -x GO111MODULE on

# Java
set -x JAVA_HOME (asdf where java)

# SDKROOT
set -x SDKROOT (env DEVELOPER_DIR=/Library/Developer/CommandLineTools xcrun --sdk macosx --show-sdk-path)
