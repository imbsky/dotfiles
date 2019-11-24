# Starship
starship init fish | source

# asdf version manager
source ~/.asdf/asdf.fish

# direnv
# direnv hook fish | source
# set -x DIRENV_LOG_FORMAT

# Brew
set -gx PATH /usr/local/sbin $PATH

# Yarn
set -gx PATH ~/.asdf/installs/nodejs/(node --version | tr -d 'v')/.npm/bin $PATH

# LLVM
set -gx PATH /usr/local/opt/llvm/bin $PATH

# opam initialization
source ~/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true

# Go
set -gx GOPATH ~/go
set -gx PATH $GOPATH/bin $PATH
set -gx GO111MODULE on

# Java
set -gx JAVA_HOME (asdf where java)

# SDKROOT
set -gx SDKROOT (env DEVELOPER_DIR=/Library/Developer/CommandLineTools xcrun --sdk macosx --show-sdk-path)
