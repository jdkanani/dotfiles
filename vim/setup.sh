#! /bin/bash
# Setup gvim

VIMFILES=~/.vim
FONTS=~/.fonts
DIRCOLORS=~/.dircolors
echo VIMFILES Path: $VIMFILES
echo FONTS Path: $FONTS
echo DIRCOLORS Path: $DIRCOLORS

# Private variables
VIMAUTOLOAD=$VIMFILES/autoload
VIMBUNDLE=$VIMFILES/bundle
VIMCOLORS=$VIMFILES/colors
VIMSNIPPETS=$VIMFILES/snippets
VIMSYNTAX=$VIMFILES/syntax

# Create vimfiles boilerplate
mkdir -p $VIMAUTOLOAD $VIMBUNDLE $VIMCOLORS $VIMSNIPPETS $VIMSYNTAX $DIRCOLORS

# Copying snippets
echo Copying snippets...
cp -rf ./snippets/* $VIMSNIPPETS/

# Pathogen
echo Downloading Pathogen...
cd $VIMAUTOLOAD
wget -N https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# git update
# ----------
# this function will clone/pull git repository.
function git_update {
    echo Updating $2...
    if [ -d $VIMBUNDLE/$2 ]; then
        cd $VIMBUNDLE/$2
        git pull origin master
    else
        git clone $1 $VIMBUNDLE/$2
    fi;
}

# vim-colors-solarized
git_update "https://github.com/altercation/vim-colors-solarized" "vim-colors-solarized"

# NERDTree
git_update "https://github.com/scrooloose/nerdtree" "nerdtree"

# snipmate.vim
git_update "https://github.com/msanders/snipmate.vim" "snipmate.vim"

# vim-fugitive
git_update "https://github.com/tpope/vim-fugitive" "vim-fugitive"

# vim-airline
git_update "https://github.com/bling/vim-airline" "vim-airline"

# CtrlP
git_update "https://github.com/kien/ctrlp.vim" "ctrlp.vim"

# syntastic
git_update "https://github.com/scrooloose/syntastic" "syntastic"

# vim-easymotion
git_update "https://github.com/Lokaltog/vim-easymotion" "vim-easymotion"

# vim-go
git_update "https://github.com/fatih/vim-go" "vim-go"

# auto-pairs
git_update "https://github.com/jiangmiao/auto-pairs" "auto-pairs"


# Solaraized dir-colors
echo Downloading dircolors dark...
cd $DIRCOLORS
wget -N https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
eval `dircolors $DIRCOLORS/dircolors.ansi-dark`

# Source code font
echo Downloading sauce code powerline fonts...
mkdir -p $FONTS
cd $FONTS
wget -N https://raw.github.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20Regular.otf
wget -N https://raw.github.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20Medium.otf
wget -N https://raw.github.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20Bold.otf
wget -N https://raw.github.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20Semibold.otf
wget -N https://raw.github.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20Light.otf
wget -N https://raw.github.com/Lokaltog/powerline-fonts/master/SourceCodePro/Sauce%20Code%20Powerline%20ExtraLight.otf
fc-cache -vf $FONTS

echo Done.
