# from "creating a happy git environment"
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

## RVM

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

#################

### Aliases
alias c='clear'
alias ls="ls -lah"

#################

## Finder
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

#################

### Load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
