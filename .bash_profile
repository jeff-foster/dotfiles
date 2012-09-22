## Git autocomplete
source /usr/local/git/contrib/completion/git-completion.bash

## Prompt
GIT_PS1_SHOWDIRTYSTATE=true
## ( colors here: http://linuxgazette.net/issue65/padala.html )
export PS1='[\033[0;32m \u\[\033[0m\] \w\033[0;34m$( __git_ps1)\033[0m ]\$ '

## Ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

### Colors
export CLICOLOR=1
### set colors ( http://www.astrobetter.com/xterm-color/ )
export LSCOLORS=GxFxCxDxBxegedabagaced

### Aliases
alias c='clear'
alias ls="ls -lah"

#################

## Macintosh Finder Stuff
# show hidden files
alias show='defaults write com.apple.finder AppleShowAllFiles TRUE
growlnotify -m "Terminal" Hidden files now showing
killall Finder'

# hide hidden files
alias hide='defaults write com.apple.finder AppleShowAllFiles FALSE
growlnotify -m "Terminal" Hidden files now hidden
killall Finder'

# create a spacer in the left section (Applications) of the Dock
alias spacerL='defaults write com.apple.dock persistent-apps -array-add "{tile-data={}; tile-type="spacer-tile";}"
killall Dock'

# create a spacer in the right section (Directories) of the Dock
alias spacerR='defaults write com.apple.dock persistent-others -array-add "{tile-data={}; tile-type="spacer-tile";}"
killall Dock'

#####################
## WATCH STAR WARS ##
alias starwars="telnet towel.blinkenlights.nl"
#####################

### Load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
