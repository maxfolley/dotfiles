alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias desk='cd ~/Desktop'
alias sites='cd ~/sites'

alias gst='git status'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'
alias githist='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
# apache
alias apache="cd /Private/etc/apache2/"
alias apache-restart="sudo apachectl -k restart"
#nginx
alias nginx-restart="sudo /usr/local/nginx/sbin/nginx -s reload"
alias nginx-start="sudo /usr/local/nginx/sbin/nginx"
alias nginx-stop="sudo /usr/local/nginx/sbin/nginx -s stop"
alias nginx="cd /usr/local/nginx/"
#UNICORN!
alias uni-start="unicorn -c config/unicorn.rb -E development -D"
alias uni-stop="kill `cat tmp/pids/unicorn.pid`"

#FLASH
alias fllog="tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt"

#YUI compressor
alias yui="java com.yahoo.platform.yui.compressor.Bootstrap"

export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin
# Play framework path
export PATH=$PATH:/Developer/Frameworks/play-2.0
# Android SDK path
export PATH=${PATH}:~/android-sdk-macosx/tools
# Java export path for jar executables
export CLASSPATH="${CLASSPATH}:/usr/local/bin/java/*:/usr/local/bin/java"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
##
# Your previous /Users/maxfo12/.bash_profile file was backed up as /Users/maxfo12/.bash_profile.macports-saved_2011-03-15_at_21:56:05
##

# MacPorts Installer addition on 2011-03-15_at_21:56:05: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH:/usr/local/bin
