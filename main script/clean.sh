# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    clean.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojamal <ojamal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/16 15:57:51 by ojamal            #+#    #+#              #
#    Updated: 2023/02/20 11:02:13 by ojamal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RESET="\033[0m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
MAGENTA="\e[1;35m"
CYAN="\e[1;36m"

# displaying free storage on your mac
FREE_STORAGE=$(df -h | grep "$USER" | awk '{print($4)}' | tr 'i' 'B')
printf "• Your current storage:$GREEN $FREE_STORAGE $RESET \n"
printf "$GREEN Cleaning your mac... $RESET\n"
# cleaning
/bin/rm -rf $HOME/.setup.sh
/bin/rm -rf $HOME/.Trash/* 2>/dev/null
/bin/rm -rf $HOME/.Trash/* 2>/dev/null
/bin/rm -rf $HOME/Library/*.42* 2>/dev/null
/bin/rm -rf $HOME/*.42* 2>/dev/null
/bin/chmod -R 777 $HOME/Library/Caches/Homebrew 2>/dev/null
/bin/rm -rf $HOME/Library/Caches/* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/Caches/* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/Code/User/workspaceStorage/* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/discord/Cache/* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/discord/Code\ Cache/js* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/* 2>/dev/null
/bin/rm -rf $HOME/Library/Application\ Support/Google/Chrome/Default/Application\ Cache/* 2>/dev/null
sleep 1;
printf "$GREEN Done $RESET"
# displaying free storage after cleaning on your mac
STORAGE_AVAILABLE=$(df -h | grep "$USER" | awk '{print($4)}' | tr 'i' 'B')
printf "• Free storage after cleaning:$GREEN $STORAGE_AVAILABLE $RESET \n"
