function brewup
  echo "🚧 Running brew update:"\n
  brew update
  echo "🚧 Running brew upgrade:"\n
  brew upgrade
  echo "🚧 Running brew cask upgrade:"\n
  brew cask upgrade
  echo "🚧 Running brew cleanup:"\n
  brew cleanup
  echo "🚧 Running brew doctor:"\n
  brew doctor
  echo "🚧 Running brew cask doctor:"\n
  brew cask doctor
end
