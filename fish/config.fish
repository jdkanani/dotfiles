function fish_greeting
  fortune -a
end

# aliases
alias mux "tmuxinator"
alias solc solcjs

# editor
set -x EDITOR nvim

# GPG settings
set -x GPG_TTY (tty)


set -g -x LIBRARY_PATH $LIBRARY_PATH /usr/local/lib

# Node and android path
set PATH /usr/local/bin $HOME/.bin '$HOME/.android-sdk' $PATH

# Setting ag as the default source for fzf
set -x FZF_DEFAULT_COMMAND 'ag -g ""'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -x ANDROID_SDK_HOME $HOME'/.android-sdk'
set -x ANDROID_HOME $HOME'/.android-sdk'
rvm default

