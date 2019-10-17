set -x PATH /usr/local/sbin $PATH

source /usr/local/opt/asdf/asdf.fish

# Opam configuration
source $HOME/.opam/opam-init/init.fish >/dev/null 2>/dev/null || true

set GHQ_SELECTOR peco

# Bind for prco history to Ctrl+r
function fish_user_key_bindings
  bind \cr peco_select_history
end

# Add llvm path
set -x PATH /usr/local/opt/llvm/bin $PATH
set -x CFLAGS -I/usr/local/opt/llvm/include
set -x CPPFLAGS -I/usr/local/opt/llvm/include
set -x LDFLAGS -L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib

# Add yarn global path
set -x PATH (yarn global bin) $PATH

# Add go path
set -x GOPATH $HOME/src/go
set -x PATH $GOPATH/bin $PATH
set -x GO111MODULE on

# Add Java path
set -x JAVA_HOME (asdf where java)
