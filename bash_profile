alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias desk='cd ~/Desktop'
alias docs='cd ~/Documents'
alias env='cd ~/Environments'
alias repos='cd ~/Repositories'
alias sites='cd ~/Sites'

alias gst='git status'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'
alias githist='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

# OPEN IOS SIMULATOR
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'

# APACHE 
alias apache="cd /Private/etc/apache2/"
alias apache-restart="sudo apachectl -k restart"

# NGINX
alias nginx="cd /usr/local/nginx/"
alias nginx-restart="sudo /usr/local/nginx/sbin/nginx -s reload"
alias nginx-start="sudo /usr/local/nginx/sbin/nginx"
alias nginx-stop="sudo /usr/local/nginx/sbin/nginx -s stop"

# UNICORN
alias uni-start="unicorn -c config/unicorn.rb -E development -D"
alias uni-stop="kill `cat tmp/pids/unicorn.pid`"

# TRACE FLASH LOG FILE
alias flog="tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt"

# YUI compressor
alias yui="java com.yahoo.platform.yui.compressor.Bootstrap"

# Git Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
PS1="\W\$(__git_ps1) \$ "

# ANT
export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin

# Play framework path
export PATH=$PATH:/Developer/Frameworks/play-2.0

# Android SDK path
export PATH=${PATH}:~/android-sdk-macosx/tools

# Java export path for jar executables
export CLASSPATH="${CLASSPATH}:/usr/local/bin/java/*:/usr/local/bin/java"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# ADD NODE NPMs TO PATH
export PATH=$PATH:/usr/local/share/npm/bin/

# Postgres.app path var
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

export PATH=$PATH:/usr/local/bin
