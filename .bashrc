#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# git stuff
if [ -f "/etc/arch-release" ]; then
    . /usr/share/git/completion/git-completion.bash
    . /usr/share/git/completion/git-prompt.sh
elif [ -f "/etc/bash_completion" ]; then
    . /etc/bash_completion
fi

# gcloud
if [ -f "/opt/google-cloud-sdk/path.bash.inc" ]; then
    . /opt/google-cloud-sdk/path.bash.inc
fi

if [ -f "/opt/google-cloud-sdk/completion.bash.inc" ]; then
    . /opt/google-cloud-sdk/completion.bash.inc
fi

# aliases
alias ls='ls --color=auto'

# aliases with args (functions)
vimglob() { vim $(find . | grep $1); }

# prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

if [ -x "/usr/bin/vim" ]; then
    export EDITOR=/usr/bin/vim
    export VISUAL="$EDITOR"
fi

# env vars
export PATH="$PATH:$HOME/bin"
