# asdf version manager
source ~/.asdf/asdf.fish

# direnv
direnv hook fish | source
set -gx DIRENV_LOG_FORMAT

# opam
source /home/konata/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
