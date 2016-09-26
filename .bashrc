# Define some colors first:
red='\033[0;31m'
RED='\033[1;31m'
green='\033[0;32m'
GREEN='\033[1;32m'
blue='\033[0;34m'
BLUE='\033[1;34m'
purple='\033[0;35m'
PURPLE='\033[1;35m'
cyan='\033[0;36m'
CYAN='\033[1;36m'
NC='\033[0m'              # No Color


# If id command returns zero, you.ve root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
#Display Full Path with Color
export PS1="\[${GREEN}\]\u\[${NC}\]@\[${PURPLE}\]\h\[${NC}\]:\[${CYAN}\]\w\[${NC}\]# "
else # normal
export PS1="\[${GREEN}\]\u\[${NC}\]@\[${PURPLE}\]\h\[${NC}\]:\[${CYAN}\]\w\[${NC}\]$ "
fi

alias vi='vim'

#Improving how ls works
alias ls='ls -aF --color=always'
alias ll='ls -l'

#Cleans bash history.  Does not include lines starting with spaces
#and duplicate lines
export HISTCONTROL=ignoreboth


#Correct misspellings of directories.
shopt -s cdspell

#allows files beginning with a dot to be returned in filename expansions.
shopt -s dotglob

#Change the title of Xterm
case $TERM in
    xterm*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'
        ;;
    *)
        ;;
esac
