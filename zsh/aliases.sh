# CD aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias ft="cd ~"

# List
alias la="ls -la"
alias lt="ls -ltphk"
alias large="ls -alhS | head -n 20"

# Copy PWD to Clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"

# Git command aliases that need to run from bash, not gitconfig
# alias pl="git copl $(get_git_branch)"

# Recursively delete `.DS_Store` files
alias cleands="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"

# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"


#Coding
hack() {
    fork "$1"
    code "$1"
}

alias grep='grep --color=auto -n'

alias psg='ps -ef | grep '

alias ippub="curl -s http://whatismyip.akamai.com -w '\n'"

alias f='open -a Finder ./'  # Opens current directory in MacOS Finder

#Python
alias vnv='source .venv/bin/activate && tput setab 4; tput setaf 7; echo "$(python --version)$(which python)"; tput sgr0'
alias jnb='jupyter notebook'

alias warm='stress -c 6 -m 2 -t 300'

alias bu="brew update && brew upgrade && brew cleanup"
