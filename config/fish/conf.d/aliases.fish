# Easier navigation: ..., ...., .....
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Shortcuts
alias rf 'rm -rf'
alias cwd 'wslpath -w (pwd) | clip.exe'

# yarn
alias yarn 'env CHILD_CONCURRENCY=(nproc) NETWORK_CONCURRENCY=(nproc) yarn'

# bundler
alias bi 'bundle install --path vendor/bundle --jobs=(nproc)'
alias be 'bundle exec'

# opam shortcut
alias opamup 'opam update --all --upgrade --jobs=(nproc) --yes'

# youtube-dl
alias mp3dl "youtube-dl --format mp3 $1"
alias mp4dl "youtube-dl --format bestvideo+bestaudio --merge-output-format mp4 $1"
