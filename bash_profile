#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias apps='cd ~/Apps'
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

# show and hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# OPEN ANDROID EMULATOR 
# alias android='emulator -avd androidEmulator'

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
# alias uni-start="unicorn -c config/unicorn.rb -E development -D"
# alias uni-stop="kill `cat tmp/pids/unicorn.pid`"

# TRACE FLASH LOG FILE
alias flog="tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt"

# YUI compressor
alias yui="java com.yahoo.platform.yui.compressor.Bootstrap"

# Git Bash Completion
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#  PS1="\W\$(__git_ps1) \$ "
#fi

# ANT
export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin

# Play framework path
export PATH=$PATH:/Developer/Frameworks/play-2.0

# Android SDK path
export PATH=${PATH}:~/android-sdk-macosx/tools

# Java export path for jar executables
export CLASSPATH="${CLASSPATH}:/usr/local/bin/java/*:/usr/local/bin/java"
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile

# Run tmux in every shell
# [[ $TERM != "screen" ]] && exec tmux
# Fix tmux color scheme on linux
alias tmux="TERM=screen-256color-bce tmux"

# ADD NODE NPMs TO PATH
export PATH=$PATH:/usr/local/share/npm/bin/

# Android sdk 
export PATH=${PATH}:~/Development/adt-bundle-mac/sdk/tools
export PATH=${PATH}:~/Development/adt-bundle-mac/sdk/platform-tools

# RabbitMQ
export PATH=${PATH}:~/Dev/libs/rabbitmq_server-3.3.5/sbin/

# Elastic Beanstalk CLI
export PATH=$PATH:~/Development/AWS-ElasticBeanstalk-CLI-2.5.1/eb/linux/python2.7/

# Postgres.app path var
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

export PATH=$PATH:/usr/local/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by Miniconda3 4.3.21 installer
export PATH="/Users/maxwell.folley/miniconda3/bin:$PATH"

export PATH=$PATH:/Software/chromedriver

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
