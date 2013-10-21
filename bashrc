# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll="ls -la --color=auto"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ssh="ssh -A"
alias qq="exit"

export PS1="\e[0;31m[\t | \u@\h:\w]\!\$ \e[m"
