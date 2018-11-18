#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# arch specific git stuff
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh

# aliases
alias ls='ls --color=auto'

# aliases with args (functions)
vimglob() { vim $(find . | grep $1); }

# prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# env vars
export PATH="$PATH:/home/adam/bin"
