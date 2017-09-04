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
    $ ln -s $PWD/vimrc.symlink ~/.vimrc
    ````
    This will create symlink for `.vimrc` file in your home directory.

2. [tmux](http://tmux.sourceforge.net/) configuration
    ````sh
    $ cd
    $ git clone https://github.com/gpakosz/.tmux.git
    $ ln -s -f .tmux/.tmux.conf
    $ cp .tmux/.tmux.conf.local .
    ````
    Then proceed to [customize](https://github.com/gpakosz/.tmux#enabling-the-powerline-look) your ~/.tmux.conf.local copy.

3. [ctags](http://ctags.sourceforge.net/) configuration
    ````sh
    $ cd ctags
    $ ln -s $PWD/ctags ~/.ctags
    ````

4. [fish](http://fishshell.com/) configuration
    ````sh
    $ cd fish
    $ ln -s $PWD/config.fish ~/.config/fish/config.fish
    $ fish_config
    ````

LICENSE
-------

[MIT](http://opensource.org/licenses/MIT)
