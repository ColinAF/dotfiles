# ~/.bashrc

#Set vi movement
set -o vi

# Allow tmux to use the `h` key
bind -r "C-h"

# Make with a reasonable ammount of jobs 
export MAKEFLAGS="-j$(nproc)"

# General Aliases 
alias less="less -R" # Always retain colors in less
alias gt="grep -Irn --color=always" # 'grep text' no bin files, recursive, line nums
alias rm="rm -i"   # Prompt before removing anything
alias ll="ls -lah" # List all files
alias lt="ls -lth" # List files by most recent update 
alias ff="find -name" # Find a file by name
alias fd="find -type d -name" # Find a directory by name
alias python="python3" # Always use python3

# Edm Aliases 
alias diag="edm -x diagnostics.edl &"
