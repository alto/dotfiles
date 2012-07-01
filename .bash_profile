#!/bin/bash

# Load RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Add rvm gems and nginx to the path
PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin
PATH="/opt/local/bin:/opt/local/apache2/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:$PATH"
PATH="$PATH:/Library/PostgreSQL8/bin"
export PATH

# Path to the bash it configuration
# export BASH=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
# export BASH_THEME='alto'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="/usr/bin/subl -w"
export GIT_EDITOR='/usr/bin/subl -w'

# Set the path nginx
# export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Load Bash It
# source $BASH/bash_it.sh
for file in ~/.{appearance,exports,aliases,functions,gitcompletion,sshcompletion,historyrc}; do
  [ -r "$file" ] && source "$file"
done
unset file


export NODE_PATH="/usr/local/lib/node/"
export PATH=/usr/local/share/npm/bin:$PATH

