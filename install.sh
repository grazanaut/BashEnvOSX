#!/bin/bash
CWD=$(cd $(dirname $0) && pwd)
BACKUP_DIR=$HOME/.dotfiles_backup/`date +'%Y-%m-%d-%H-%M'`
mkdir -p $BACKUP_DIR

# back up existing files
echo "Backup previous dotfiles to ~./dotfiles_backup/[date]\n"

if [ -f $HOME/.bash_profile ]; then
  mv $HOME/.bash_profile $BACKUP_DIR/bash_profile
fi

if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $BACKUP_DIR/bashrc
fi

#if [ -f $HOME/.gitconfig ]; then
#  mv $HOME/.gitconfig $BACKUP_DIR/gitconfig
#fi

#if [ -f $HOME/.gitignore ]; then
#  mv $HOME/.gitignore $BACKUP_DIR/gitignore
#fi

if [ -f $HOME/.jshintrc ]; then
  mv $HOME/.jshintrc $BACKUP_DIR/jshintrc
fi

if [ -f $HOME/.jshintignore ]; then
  mv $HOME/.jshintignore $BACKUP_DIR/jshintignore
fi


# set up .bashrc
ln -s $CWD/bash_profile $HOME/.bash_profile

# set up .bashrc
ln -s $CWD/bashrc $HOME/.bashrc

# set up dot config files
#ln -s $CWD/config.d/gitconfig $HOME/.gitconfig
#ln -s $CWD/config.d/gitignore $HOME/.gitignore
# default jshintrc (override in project directories)
ln -s $CWD/jshintrc $HOME/.jshintrc
ln -s $CWD/jshintignore $HOME/.jshintignore

# export the DOTFILES directory for use in .bashrc
#echo $CWD > $HOME/.dotfiles_dir

echo "Close terminal and open a new one to source the new .bashrc"
