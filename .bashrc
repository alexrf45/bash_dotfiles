shopt -s histappend
shopt -s checkwinsize
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

source "$HOME/.bash_profile"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

eval $(ssh-agent) > /dev/null

ssh-add ~/.ssh/f0nzy 2> /dev/null


. "$HOME/.cargo/env"
