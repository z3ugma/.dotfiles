# # Get the current git branch
# get_git_branch() {
#   local branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
#   echo $branch
# }

# # Assemble the Git part of prompt
# git_prompt () {
#   # Not Git, don't add to prompt
#   if ! git rev-parse --git-dir > /dev/null 2>&1; then
#     return 0
#   fi

#   git_branch=$(get_git_branch)

#   if git diff --quiet 2>/dev/null >&2; then
#     git_color="$c_git_clean"
#   else
#     git_color="$c_git_dirty"
#   fi

#   echo " [$git_color$git_branch${c_reset}]"
# }

venv_prompt () {
  if [ -z "$VIRTUAL_ENV" ]; then
    echo ""
  else 
    echo "($(basename $VIRTUAL_ENV)) "
  fi
}


# Make a directory && cd into that directory
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Rename all directories to lowercase
function lowercaseAllDirs () {
  for f in *; do
    if [[ -d "$f" && ! -L "$f" ]]; then
      local LOWERDIR="$( echo $f | tr '[:upper:]' '[:lower:]')"

      if [[ "$f" != "$LOWERDIR" ]]; then
        mv "$f" "$LOWERDIR" && echo "$f has been lowercased to $LOWERDIR"
      fi
    fi
  done
}

listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
    else
        echo "Usage: listening [pattern]"
    fi
}

pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
}
