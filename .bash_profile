## Prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\033[0;32m\u\[\033[0m\] \w\033[0;34m$(__git_ps1)\033[0m \$ '

## Postgres stuff
export PGHOST=localhost

### Colors
export CLICOLOR=1
### set colors ( http://www.astrobetter.com/xterm-color/ )
export LSCOLORS=gxfxcxdxBxegedabagaced
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

### Aliases
alias c='clear'
alias ls='ls -lah'
alias S='cd ~/Sites'
alias pa='git push; git push heroku master'
alias dot='cd ~/Documents/dotfiles'
alias repos='cd ~/Documents/Git\ Repos'
alias est='cd ~/Documents/estimize'
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

#growl in terminal
growl() { echo -e $'\e]9;'${1}'\007' ; return ; }

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

source "`brew --prefix grc`/etc/grc.bashrc"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# Bundler binstubs
#
export PATH=./bin:$PATH

###################
alias jscript='java org.mozilla.javascript.tools.shell.Main
Rhino 1.7 release 1 2008 03 06'

#teamocil autocomplete
complete -W "$(teamocil --list)" teamocil

### Load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
