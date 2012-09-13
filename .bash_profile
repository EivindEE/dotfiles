source ~/.promt_command_config

## Setting aliases
alias q='cd ..; ls'
alias h="cd ~"
alias ss='open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app'

# Git shortcuts
alias gp='git push origin master'
alias gco='git checkout'
alias gc='git commit -m'
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gpub='git checkout gh-pages; git checkout master -- src* spec*;git add .; git commit -m "Publish changes from master"; git push origin gh-pages; git checkout master'


## Expanding the history file
export HISTFILESIZE=3000

#Remove duplicates from history
export HISTCONTROL="ignoredups"
export HISTIGNORE="&:ls:[bf]g:exit"

#When running two bash windows, allow both to write to the history, not one stomping the other
shopt -s histappend
#Keep multiline commands as one command in history
shopt -s cmdhist

#####
# Terminal colors
####
export CLICOLOR=1
export LSCOLORS=Cxxxxxxx
# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
