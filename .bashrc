#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

possibly_included_files=(
	# git stuff
	/usr/share/git/completion/git-completion.bash
	/usr/share/git/completion/git-prompt.sh
	/etc/bash_completion
	# gcloud
	/opt/google-cloud-sdk/path.bash.inc
	/opt/google-cloud-sdk/completion.bash.inc
)
for f in "${possibly_included_files[@]}"; do
	[[ -f $f ]] && source "$f"
done
unset possibly_included_files f

# aliases
alias ls='ls --color=auto'

# aliases with args (functions)
vimglob() ( shopt -s globstar nullglob; exec vim **/*"$*"*; )

# prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# editor
if [[ -x /usr/bin/vim ]]; then
    export EDITOR=/usr/bin/vim
    export VISUAL="$EDITOR"
fi

# env vars
export PATH="$HOME/bin:$PATH"
