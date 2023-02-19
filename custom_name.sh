
Color_Off="\e[m"       # Text Reset

Purple="\e[1;35m"       # Purple
Cyan="\e[1;36m"         # Cyan
Red="\e[1;31m"         # Red

git branch &>/dev/null
if [ $? = 0 ]; then
    export PS1="${Purple}\u${Red}[$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)]${Cyan}\w ${Color_Off}$ "
    else
    export PS1="${Purple}\u${Red}@${Cyan}\w ${Color_Off}$ "
fi

