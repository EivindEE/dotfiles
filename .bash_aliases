## Setting aliases
alias q='cd ..; ls'
alias xcode='open /Developer/Applications/Xcode.app/'
alias bb='bbedit'
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

## Folder shortcuts
alias sts='cd /Users/eivindelseth/Documents/workspaces'
alias info331='cd /Users/eivindelseth/Dropbox/INFO331/Rapport'
alias master='cd /Users/eivindelseth/Documents/Studier/Informasjonsvitenskap/Høst2012ogVår2013/INFO390/'
alias t='cd /Users/eivindelseth/Documents/Studier/Informasjonsvitenskap/Høst2012ogVår2013/INFO390/Oppgave'
alias s='cd /Users/eivindelseth/Documents/Studier/Informasjonsvitenskap/Høst2012ogVår2013/INFO390/SemTag'
alias dropbox='cd /Users/eivindelseth/Dropbox'
alias programering='cd /Users/eivindelseth/Documents/Programering'
alias stud='cd /Users/eivindelseth/Documents/Studier/Informasjonsvitenskap/Vår2012'
alias collos='cd /Users/eivindelseth/Documents/workspaces/INFO323/Collos'
alias info323='cd /Users/eivindelseth/Dropbox/CollosReport/Final\ report'
alias acms='cd /Users/eivindelseth/Documents/Programering/JavaScript/a-cms'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi
# List all files colorized in long format
alias l="ls -l ${colorflag}"
# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"
# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'
# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

alias src='source ~/.bash_profile'
alias bbb='bb .'
alias dot='cd ~/Documents/Programering/dotfiles/'
alias web='cd ~/Documents/Programering/web'
alias running='ps -fe|grep'
alias gpo='git push origin'
alias gb='git branch'
