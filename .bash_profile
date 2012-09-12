source ~/.promt_command_config

## Setting aliases
alias q='cd ..; ls'
alias publish='git checkout gh-pages; git checkout master -- src* spec*;git add .; git commit -m "Publish changes from master"; git push origin gh-pages; git checkout master'

## Setting exports
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:~/scripts"

## Expanding the history file
export HISTFILESIZE=3000

#Remove duplicates from history
export HISTCONTROL="ignoredups"
export HISTIGNORE="&:ls:[bf]g:exit"

#When running two bash windows, allow both to write to the history, not one stomping the other
shopt -s histappend
#Keep multiline commands as one command in history
shopt -s cmdhist

#PROMPT_COMMAND='history -a'
