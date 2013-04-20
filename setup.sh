#!/bin/sh

VIM="$HOME/.vim"
VIMRC="$HOME/.vimrc"

function fatal() {
  echo "Error: $1"
  echo ""
  echo "(try: rm -rf ~/.vim*)"
  exit 1
}

if [ -d $VIM ];
then
  fatal "Directory '$VIM' already exists"
fi

if [ -L $VIM ];
then
  fatal "'$VIM' is currently symlinked"
fi

if [ -e $VIMRC ];
then
  fatal "File '$VIMRC' already exists"
fi

ln -s `pwd`/vimrc $HOME/.vimrc
ln -s `pwd`/vim $HOME/.vim

echo "Symlinks created, installing vundles..."

vim +BundleInstall +qall -e -s

echo "Complete!"

