dotfiles
========
some configuration files and utilities.

How To Use?
-----------

#### Clone this repository
```sh
$ git clone https://github.com/jdkanani/dotfiles
$ cd dotfiles
```
#### Setup
1. [gvim](http://www.vim.org/) configuration
    ````sh
    $ cd vim
    $ bash setup.sh
    $ ln -s $PWD/vimrc.symlink ~/.vimrc
    $ ln -s $PWD/ctags.symlink ~/.ctags
    ````
    This will create symlink for `.vimrc` file in your home directory.

2. [tmux](http://tmux.sourceforge.net/) configuration
    ````sh
    $ cd tmux
    $ln -s $PWD/tmux.conf ~/.tmux.conf
    ````
    This will create symlink for `.tmux.conf` file in your home directory. This configuration needs [tmux](http://tmux.sourceforge.net/) installed on your machine.


What's in the box?
------------------

Plugins

* [Pathogen](https://github.com/tpope/vim-pathogen) for managing vim plugins.
* [Ctrl-P](https://github.com/kien/ctrlp.vim) for fuzzy file/buffer/tag finding.
* [Auto-pairs](https://github.com/jiangmiao/auto-pairs) for inserting/deleting brackets, parens, quotes in pair.
* [Nerdtree](https://github.com/scrooloose/nerdtree) for exploring file systems.
* [Snipmate](https://github.com/msanders/snipmate.vim) for snippets.
* [Airline](https://github.com/bling/vim-airline) - light and fast status/tabline.
* [Fugitive](https://github.com/tpope/vim-fugitive) - git wrapper.
* [Solarized theme](https://github.com/altercation/vim-colors-solarized) for making vim beautiful with dark theme.
* [Syntastic](https://github.com/scrooloose/syntastic) - syntax checking plugin.
* [Easy-motion](https://github.com/Lokaltog/vim-easymotion) - simpler way to use some motions.
* [vim-go](https://github.com/fatih/vim-go) - configuration for Go language.

Fonts

* source code pro (with [airline](https://github.com/Lokaltog/powerline-fonts) support) [Default]

Dir colors for GNU

* [dircolors-solarized](https://github.com/seebi/dircolors-solarized)

Some key bindings
-----------------

vim

-   set `mapleader` to `,`
-   `jk` as `<esc>`
-   disabled navigation keys
-   save current file with `<ctrl-s>`
-   `<F2>` - toggle nerdtree
-   `<F4>` - toggle spelling checker
-   `<F12>`- generate ctags for current directory
-   Buffer
    *   Delete buffer -  `<leader>bd`
    *   Next buffer - `<leader>bn`
    *   Previous buffer - `<leader>bp`
-   Tab
    *   Insert new tab - `<leader>ti`
    *   Next tab - `<leader>tn`
    *   Previous tab - `<leader>tp`
    *   Tab only - `<leader>to`
    *   Close tab - `<leader>tc`
-   Search ctags - `<leader>st`
-   Strip white spaces with `<leader>ss`


tmux

-   set `prefix` to `<ctrl-a>`
-   vi key navigation bindings
-   `<space>` or `<prefix>t` - next window
-   `<backspace>` or `<prefix>T` - previous window
-   `<prefix>c` - new window
-   `<prefix>v` - split window horizontally
-   `<prefix>s` - split window vertically
-   `<prefix>h` - select left pane
-   `<prefix>j` - select down pane
-   `<prefix>k` - select up pane
-   `<prefix>l` - select right pane


LICENSE
-------

[MIT](http://opensource.org/licenses/MIT)
