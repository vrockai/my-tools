# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash-profile ]; then
    . ~/.bash-profile
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ~/.bash-aliases ]; then
    . ~/.bash-aliases
fi

# Java related
export MVN_HOME=/home/vrockai/opt/apache-maven-3.5.0/
export JAVA_HOME=/home/vrockai/opt/jdk1.8.0_144/
export JAVA_OPTS="-Xms64m -Xmx8192m -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=512m"

export PATH=$PATH:$MVN_HOME/bin/:$JAVA_HOME/bin/:$HOME/opt/bin/

# Node.js related
export NODE_PATH=$NODE_PATH:/home/vrockai/.npm-packages/lib/node_modules
export NVM_DIR="/home/vrockai/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#Default node version
nvm use 6.3.1
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MC_SKIN=$HOME/.mc/solarized.ini

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh