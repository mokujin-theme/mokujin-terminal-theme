#!/bin/bash

################################################################################
# Mokujin Terminal Theme (PS1)
# Version 1.1
# Copyright 2022 seek
# https://gitlab.com/mokujin-theme/mokujin-terminal-theme
#    
#   This program is free software: you can redistribute it and/or modify it 
#   under the terms of the GNU General Public License as published by the 
#   Free Software Foundation, either version 3 of the License, or (at your 
#   option) any later version.
#
#   This program is distributed in the hope that it will be useful, but 
#   WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
#   or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
#   more details.
#
#   You should have received a copy of the GNU General Public License along 
#   with this program. If not, see <https://www.gnu.org/licenses/>.   
################################################################################

# Put the follwing in your ~.bashrc

# !! Intended to be used with a monospace Nerd Font terminal font !!
__prompt_command()
{
    # Shows exit status of last command as the status_icon colour.
    local last_exit_code=$?
    if [ ${last_exit_code} -eq 0 ]; then 
        local status_colour="\e[0;0;36;100m"
    else
        local status_colour="\e[0;0;31;100m"
    fi

    # Some neat status font icon posibilities
    #      ﳝ          ﳜ    ﴫ        ﲲ 雷
    #                     
    local status_icon=""

    # Used to separate username and hostname
    local s1_div=" 雷"

    # Three sections
    local s1="\[\e[0;0;33;45m\] \u\[\e[0;37;45m\]${s1_div}\[\e[0;0;33;45m\]\H"
    local s2="\[\e[0;0;35;100m\] \[\e[0;32;100m\]\W "
    local s3="\[${status_colour}\]${status_icon}\[\e[0;1;90;40m\]\[\e[0m\]"

    # Assemble PS1 from sections
    PS1="${s1}${s2}${s3}"
}
# Allows PS1 to be set dynamically
PROMPT_COMMAND=__prompt_command
