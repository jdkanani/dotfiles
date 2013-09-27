#! /bin/bash

# Install mutt
# sudo apt-get install mutt
# OR
# brew install mutt

MUTTHOME=~/.mutt
MUTTRC=~/.muttrc
MUTTCOLORS=$MUTTHOME/colors

mkdir -p $MUTTHOME/cache/headers
mkdir $MUTTHOME/cache/bodies
touch $MUTTHOME/certificates
mkdir $MUTTCOLORS

cp -f ./muttrc.symlink $MUTTRC

# Get solarized theme
cd $MUTTCOLORS
wget -N https://raw.github.com/altercation/mutt-colors-solarized/master/mutt-colors-solarized-dark-256.muttrc

echo Done.
