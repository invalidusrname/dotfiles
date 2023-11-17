if ! command -v brew &> /dev/null; then
  echo "installing brew..."
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

#curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
#brew bundle install --file=~/.homesick/repos/dotfiles/Brewfile

if ! command -v asdf &> /dev/null
then
  echo "installing asdf..."
  brew install asdf
fi
