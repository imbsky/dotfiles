# asdf version manager
source ~/.asdf/asdf.fish

# direnv
direnv hook fish | source
set -gx DIRENV_LOG_FORMAT

# Yarn
set -gx PATH ~/.yarn/bin $PATH

# opam
source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
