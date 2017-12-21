source ~/.git-completion.bash

export CLICOLOR=1
export TERM=xterm-256color

export EDITOR=vim;

# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL=ignoredups:erasedups

export LANG=en_US.UTF-8;
export LC_ALL='en_GB.UTF-8';

# Filetree display
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'";

# Open all files which appear from running git status
alias statusopen="vim \$(git status --porcelain | awk '{print $2}')";


