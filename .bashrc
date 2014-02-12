# general aliases
alias la='ls -AGn'
alias c='clear'
alias ra="sudo apachectl restart"

# ls colors
CLICOLOR=1
LSCOLORS=Gxfxcxdxbxegedabagacad
export CLICOLOR LSCOLORS

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# ssh keep alive
alias sshalive='ssh -o ServerAliveInterval=30'

# git aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gcm='git commit -m'
alias gb='git branch'
alias gco='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpl='git pull'
alias gcl='git clone'
alias gplo='git pull origin'
alias gpo='git push origin'
