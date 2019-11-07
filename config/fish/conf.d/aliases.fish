# Easier navigation: .., ..., ...., ....., ~ and -
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Shortcuts
alias d 'cd ~/Dropbox'
alias dl 'cd ~/Downloads'
alias rf 'rm -rf'

# Replace default commands
alias ls 'exa -s type'
alias la 'exa -a -s type'

# bundler shortcuts
alias bi 'bundle install --path vendor/bundle --jobs=(getconf _NPROCESSORS_ONLN)'
alias be 'bundle exec'

# IP addresses
alias pubip4 'dig +short -4 myip.opendns.com @resolver1.opendns.com'
alias pubip6 'dig +short -6 myip.opendns.com aaaa @resolver1.ipv6-sandbox.opendns.com'
alias localip 'ifconfig | grep -Eo "inet (addr:)?([0-9]*\\.){3}[0-9]*" | grep -Eo "([0-9]*\\.){3}[0-9]*" | grep -v "127.0.0.1"'
alias ips 'ifconfig -a | grep -o "inet6\\? \\(addr:\\)\\?\\s\\?\\(\\(\\([0-9]\\+\\.\\)\\{3\\}[0-9]\\+\\)\\|[a-fA-F0-9:]\\+\\)" | awk "{ sub(/inet6? (addr:)? ?/, \"\"); print }"'

# Show active network interfaces
alias ifactive 'ifconfig | pcregrep -M -o "^[^\t:]+:([^\n]|\n\t)*status: active"'

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup '/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

# Copy working directory
alias cwd 'pwd | tr -d "\r\n" | pbcopy'

# Untar
alias untar 'tar xvf'

# macOS has no `md5sum`, so use `md5` as a fallback
alias md5sum 'md5'

# youtube-dl
alias mp3dl 'youtube-dl -f mp3'
alias mp4dl 'youtube-dl -f mp4'

# Google Chrome
alias chrome '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill 'ps ux | grep "[C]hrome Helper --type=renderer" | grep -v extension-process | tr -s " " | cut -d " " -f2 | xargs kill'

# Lock the screen (when going AFK)
alias afk '/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
