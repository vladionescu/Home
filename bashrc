# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
PS1="\[\033[1;36m\]\H \[\033[32m\][\w] \[\033[0;36m\]\t\[\033[0m\]\n\[\033[1;33m\]\$ \[\033[0m\]"

alias ll="ls -la --color=auto"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias qq='exit'
alias py='python'

alias ga='git add'
alias gs='git status -s'
alias gl='git log --oneline --graph --decorate --all'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gd='git diff --color'
alias gm='git merge --no-ff'
alias gr='git rebase'
alias gup='git checkout master && git pull --rebase'

alias sortip='sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4'
alias actcon="netstat --inet | grep -vE 'ssh|xmpp|ldap|localhost|domain|msft|61614|8140'"
