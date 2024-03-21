export EDITOR=/usr/bin/nvim

PS1='\[\033[1;32m\]\u@\h\[\033[m\]:\[\033[1;34m\]\w\[\033[m\]\$ '

execsh() {
  exec "$SHELL" -l
}

alias c=cd

alias g=git
alias ga='git add'
alias gc='git commit'
alias gcam='git commit --amend -m'
alias gcm='git commit -m'
alias gp='git push'
alias gs='git status'

alias l=ls
alias la='ls -a'
alias ll='ls -al'

alias v=nvim
alias vi=nvim
alias vim=nvim
