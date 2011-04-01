# Add /usr/local/bin FIRST in path to allow homebrew-installed apps to be found
# first
PATH=/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH

#export GEM_HOME='/usr/local/homebrew/Cellar/gems/1.8'
export NODE_HOME='/usr/local/lib/node'
# -G add color to ls and -F to show / for folders and @ for symlinks
alias ls='ls -FG'
# other aliases
alias sshvm='ssh dickwolf@local.test'
