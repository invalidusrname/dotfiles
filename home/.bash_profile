if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
  builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/bash/ghostty.bash"
fi

if [ -r $HOME/.bash_git ]; then
 source $HOME/.bash_git
fi

if [ -r $HOME/.private_vars ]; then
  source $HOME/.private_vars
fi

if [ -r $HOME/.custom_functions ]; then
  source $HOME/.custom_functions
fi

if [ -r $HOME/.custom_variables ]; then
  source $HOME/.custom_variables
fi

if [ -r $HOME/.custom_aliases ]; then
  source $HOME/.custom_aliases
fi

# OSX specific
if [[ $(uname) == 'Darwin' && -f $HOME/.osx_profile ]]; then
  source "$HOME/.osx_profile"
fi

if [[ $(uname) == "Linux" ]]; then
  eval $(dircolors $HOME/dev/play/gnome-terminal-colors-solarized/dircolors)
fi

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

if command -v mise >/dev/null 2>&1; then
  eval "$(~/.local/bin/mise activate bash --shims)"
fi

if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi
