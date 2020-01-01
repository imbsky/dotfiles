# Starship
starship init fish | source

# asdf version manager
source ~/.asdf/asdf.fish

# Yarn
set -gx PATH ~/.yarn/bin $PATH

# Brew
set -gx PATH /usr/local/sbin $PATH

set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/ed/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/findutils/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/gnu-tar/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/grep/libexec/gnubin $PATH

set -gx PATH /usr/local/opt/util-linux/bin $PATH

# LLVM
set -gx PATH /usr/local/opt/llvm/bin $PATH

# opam configuration
source ~/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true

# dotnet tools
set -gx PATH ~/.dotnet/tools $PATH

# SDKROOT
set -gx SDKROOT (env DEVELOPER_DIR=/Library/Developer/CommandLineTools xcrun --sdk macosx --show-sdk-path)
