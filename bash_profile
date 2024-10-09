# ~/.bash_profile

# Export TERM
export TERM=xterm-256color

# Add paths to PATH
export PATH="~/utils/scripts:$PATH"

# Override Shell Prompt                                                                                                                                                                                                                                   
export PS1="\[\033[38;5;129m\]\u@\h[\W\[$(tput sgr0)\]\[\033[38;5;63m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\[\033[38;5;129m\]]->\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Source the EPICS config file written by Mike
# It does a lot of stuff and should be refactored for my usage
# Note: This is particularly for 3.15.5-1.1
if [ -f ~/utils/scripts/epicsSetup_3.15.5-1.1 ]; then
     . ~/utils/scripts/epicsSetup_3.15.5-1.1 
fi

# Source the .bashrc if it exists
if [ -f ~/.bashrc ]; then
     . ~/.bashrc
fi
