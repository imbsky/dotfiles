set -x PATH /usr/local/sbin $PATH

source /usr/local/opt/asdf/asdf.fish

set GHQ_SELECTOR peco

# Bind for prco history to Ctrl+r
function fish_user_key_bindings
  bind \cr peco_select_history
end

# Add llvm path
set -x PATH /usr/local/opt/llvm/bin $PATH

# Add yarn global path
set -x PATH (yarn global bin) $PATH

# Add go path
set -x GOPATH $HOME/src/go
set -x PATH $GOPATH/bin $PATH

# Add Java path
set -x JAVA_HOME (asdf where java)
