# asdf version manager
set -gx PATH ~/.asdf/bin $PATH

# direnv
asdf exec direnv hook fish | source
set -gx DIRENV_LOG_FORMAT

# opam
source ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
