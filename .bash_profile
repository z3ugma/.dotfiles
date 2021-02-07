if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# If something tells you to update the PATH var,
# instead, edit ~/.dotfiles/bash/path.sh

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fredturkington/google-cloud-sdk/path.bash.inc' ]; then . '/Users/fredturkington/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/fredturkington/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/fredturkington/google-cloud-sdk/completion.bash.inc'; fi

eval "$(rbenv init -)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
