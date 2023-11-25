if ! command -v brew &> /dev/null; then
  echo "installing brew..."
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
#brew bundle install --file=~/.homesick/repos/dotfiles/Brewfile

if ! command -v asdf &> /dev/null
then
  echo "installing minimal brews..."
  brew install iterm2 1password asdf
fi
