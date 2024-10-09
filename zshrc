# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/u/gu/cafrisch/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall




#export TERM=xterm-256color

#export PS1="\[\033[38;5;129m\]\u@\h[\W\[$(tput sgr0)\]\[\033[38;5;63m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\[\033[38;5;129m\]]->\[$(tput sgr0)\] \[$(tput sgr0)\]"


alias ll="ls -la" # List all files
alias lt="ls -lt" # List files by most recent update 
alias epdev="source /afs/slac/g/spear/epics/epicsSetup_3.15.5-1.1.bash"

