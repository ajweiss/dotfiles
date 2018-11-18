#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# arch specific
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

alias ls='ls --color=auto'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export PATH="$PATH:/home/adam/bin"
