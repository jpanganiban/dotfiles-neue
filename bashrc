#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$PATH:$HOME/bin"
export LANG="en_US.UTF-8"
export TERM="screen-256color"

alias ls='ls --color=auto'
alias la='ls -a'
PS1='[\u@\h \W]\$ '

# Autocomplete
function _work {
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(ls ${WORKSPACE})" -- $cur ) )
}

# Convinence function for going to the workspace
function work {
  if [ $1 ]; then
    if [ -d $WORKSPACE/$1 ]; then
      cd $WORKSPACE/$1;
      return 0
    fi
    echo "No workspace named '$1'"
    return 1
  fi
  cd $WORKSPACE
}
complete -F _work work
