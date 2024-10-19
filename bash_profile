# ~/.bash_profile

# Export TERM
export TERM=xterm-256color

# Export a scripts dir 
export SCRIPTS="$HOME/scripts"

# Add paths to PATH
export PATH="$SCRIPTS:$PATH"

# Source the .bashrc if it exists
if [ -f ~/.bashrc ]; then
     . ~/.bashrc
fi
