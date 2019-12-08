# Starship
starship init fish | source

# asdf version manager
source ~/.asdf/asdf.fish

# opam configuration
source ~/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true

# SDKROOT
set -gx SDKROOT (env DEVELOPER_DIR=/Library/Developer/CommandLineTools xcrun --sdk macosx --show-sdk-path)
