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
alias p='python3'
alias pa='git push; git push heroku master'
alias gp='git push'
alias dot='cd ~/Documents/repos/dotfiles'
alias repos='cd ~/Documents/repos'
alias t='npm t'
alias tc='npm t -- --coverage'
alias tcw='npm t -- --coverage --watch'
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

### Load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

### Load secret variables
if [ -f ~/.bash_secrets ]; then
    . ~/.bash_secrets
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
