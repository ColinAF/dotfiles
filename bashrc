
#export TERM=xterm-256color

#export PS1="\[\033[38;5;129m\]\u@\h[\W\[$(tput sgr0)\]\[\033[38;5;63m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\[\033[38;5;129m\]]->\[$(tput sgr0)\] \[$(tput sgr0)\]"


alias ll="ls -la"
