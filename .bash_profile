LOCAL_PROFILE=~/.bash_profile.local
source ~/.bash_prompt
source ~/.bash_aliases

if [ -f $LOCAL_PROFILE ]
then
	echo 'Adding local profile'
	source $LOCAL_PROFILE
else
	echo 'No local profile found'
fi

## Sett PATH
export PATH="/usr/local/bin:$PATH"
export PATH=/opt/local/lib/postgresql91/bin:$PATH
export PATH="$PATH:/usr/texbin"
export PATH="$PATH:~/scripts"
export PATH="$PATH:~/scripts/python-scripts"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/Cellar/groovy/1.8.6/libexec"

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
