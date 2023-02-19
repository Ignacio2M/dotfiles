
Color_Off="\[\e[m\]"       # Text Reset

Purple="\[\e[1;35m\]"       # Purple
Cyan="\[\e[1;36m\]"         # Cyan
Red="\[\e[1;31m\]"         # Red

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1="${Purple}\u${Red}\$(parse_git_branch)${Cyan}\w ${Color_Off}\$ "
