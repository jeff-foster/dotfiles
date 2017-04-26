## Prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\033[0;32m\u\[\033[0m\] \w\033[0;34m$(__git_ps1)\033[0m \$ '

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

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
alias p='python3'
alias dot='cd ~/Documents/repos/dotfiles'
alias repos='cd ~/Documents/Git\ Repos'
alias est='cd ~/Documents/estimize'
alias tme='tmux attach -t estimize'
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

### Load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
