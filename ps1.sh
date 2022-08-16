#!/bin/bash

__prompt_command()
{
    local last_exit_code=$?
    if [ ${last_exit_code} -eq 0 ]; then 
        local status_colour="\e[0;0;36;100m"
    else
        local status_colour="\e[0;0;31;100m"
    fi

    #      ﳝ          ﳜ    ﴫ        ﲲ 雷
    #                    
    local status_icon=""
    local s1_div=" 雷"
    
    local s1="\[\e[0;0;33;45m\] \u\[\e[0;37;45m\]${s1_div}\[\e[0;0;33;45m\]\H"
    local s2="\[\e[0;0;35;100m\] \[\e[0;32;100m\]\W "
    local s3="\[${status_colour}\]${status_icon}\[\e[0;1;90;40m\]\[\e[0m\]"
    
    PS1="${s1}${s2}${s3}"
}
PROMPT_COMMAND=__prompt_command
