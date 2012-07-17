# Add /usr/local/bin FIRST in path to allow homebrew-installed apps to be found
# first
PATH=/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH

##
## GD VM stuff
##

export VM_PLATFORM_JS_BACKOFFICE=~/gd/platform-frontend

##
## Git settings
##

#
# Git Autocomplete
#
if [ ! -f ~/.git-completion.bash ]; then
  curl -o ~/.git-completion.bash https://github.com/git/git/raw/master/contrib/completion/git-completion.bash -L
fi
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#
# Set default github committer
# NOTE!!! Please change this if you are not me, and have simply pulled my bashrc config!!!
#
git config --global user.name "Paul Graham"
git config --global user.email grazanaut@gmail.com

# Add git branch to prompt (if in repo)
export PS1='\h:\W \u$(__git_ps1 " (%s)")\$ '

#export GEM_HOME='/usr/local/homebrew/Cellar/gems/1.8'
export NODE_HOME='/usr/local/lib/node'
# -G add color to ls and -F to show / for folders and @ for symlinks
alias ls='ls -FG'
alias ll='ls -FGla'
alias nodester='/usr/local/node_modules/nodester-cli/bin/nodester.js' 
if [ -f /usr/local/bin/mvim ]; then
  alias vim='/usr/local/bin/mvim' 
fi
# other aliases
alias sshvm='ssh dickwolf@local.test'
