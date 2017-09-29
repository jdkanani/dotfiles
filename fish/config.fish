function fish_greeting
  fortune -a
end

# aliases
alias mux "tmuxinator"

# editor
set -x EDITOR nvim

# GPG settings
set -x GPG_TTY (tty)

# Node path
set PATH $HOME/node_modules/.bin/ $HOME/.bin $PATH

# Setting ag as the default source for fzf
set -x FZF_DEFAULT_COMMAND 'ag -g ""'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
