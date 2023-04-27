if ! command -v brew &> /dev/null; then
  echo "installing brew..."
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

#brew bundle install --file=~/.homesick/repos/dotfiles/Brewfile

if ! command -v asdf &> /dev/null
then
  echo "installing asdf..."
  brew install asdf
fi
