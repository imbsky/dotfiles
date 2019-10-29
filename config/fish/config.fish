# Starship
starship init fish | source

# asdf version manager
source /usr/local/opt/asdf/asdf.fish

# Homebrew
set -x PATH /usr/local/sbin $PATH

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
