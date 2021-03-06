
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#Export Java Versions - should be JDK8 for AEM6.2
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)

#Export Maven versions - Should be maven 3.2.1 or higher
export MAVEN_32_HOME=$HOME/Documents/apache-maven-3.3.9
export MAVEN_32_OPTS="-Xms512m -Xmx1024m -XX:PermSize=1024m -XX:MaxPermSize=1024m"
  
#default environment variables
export JAVA_HOME=$JAVA_8_HOME
export MAVEN_OPTS=$MAVEN_32_OPTS
export PATH=$MAVEN_32_HOME/bin:$PATH

#alias for python script
alias sendt='cd ~/workspace/timesheet; python emailRunner.py; cd ~'

#some crazy custom stuff from Brian

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBexegdabagaced

alias ls="ls -GFh"
alias dir="ls"
alias ll="ls -lhA"

#up n folders
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#common folder traversal
alias home="cd ~"
alias work="cd ~/workspace"
alias fuse="cd ~/workspace/fuse"
alias tinker="cd ~/workspace/Pinker\'s\ Tinkers/"

#set colors
function prompt {
    local BLACK="\[\033[0;30m\]"
    local BLACKBOLD="\[\033[1;30m\]"
    local RED="\[\033[0;31m\]"
    local REDBOLD="\[\033[1;31m\]"
    local GREEN="\[\033[0;32m\]"
    local GREENBOLD="\[\033[1;32m\]"
    local YELLOW="\[\033[0;33m\]"
    local YELLOWBOLD="\[\033[1;33m\]"
    local BLUE="\[\033[0;34m\]"
    local BLUEBOLD="\[\033[1;34m\]"
    local PURPLE="\[\033[0;35m\]"
    local PURPLEBOLD="\[\033[1;35m\]"
    local CYAN="\[\033[0;36m\]"
    local CYANBOLD="\[\033[1;36m\]"
    local WHITE="\[\033[0;37m\]"
    local WHITEBOLD="\[\033[1;37m\]"
    local RESETCOLOR="\[\e[00m\]"

    parse_git_branch() {
        git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ <\1>/"
    }

    export PS1="\n$GREENBOLD[\d @ \@]$RESETCOLOR $CYANBOLD\u$RESETCOLOR $CYAN@ \w$RESETCOLOR$PURPLE\$(parse_git_branch) \n$RESETCOLOR\$ "
}

prompt
