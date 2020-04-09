# Easier navigation: .., ..., ...., ....., ~ and -
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Shortcuts
alias rf 'rm -rf'
alias cwd 'wslpath -w (pwd) | clip.exe'

# yarn
alias yarn 'env CHILD_CONCURRENCY=(getconf _NPROCESSORS_ONLN) NETWORK_CONCURRENCY=(getconf _NPROCESSORS_ONLN) yarn'

# bundler
alias bi 'bundle install --path vendor/bundle --jobs=(getconf _NPROCESSORS_ONLN)'
alias be 'bundle exec'

# opam shortcut
alias opamup 'opam update --all --upgrade --jobs=(getconf _NPROCESSORS_ONLN) --yes'

# youtube-dl
alias mp3dl 'youtube-dl -f mp3'
alias mp4dl 'youtube-dl -f mp4'

# Copy working directory
alias cwd 'wslpath -w (pwd) | clip.exe'
