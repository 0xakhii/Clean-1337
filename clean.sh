# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    clean.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojamal <ojamal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/16 15:57:51 by ojamal            #+#    #+#              #
#    Updated: 2023/02/20 09:51:09 by ojamal           ###   ########.fr        #
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
/bin/rm -rf $HOME/.Trash/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/*.42* > /dev/null 2>&1
/bin/rm -rf $HOME/*.42* > /dev/null 2>&1
/bin/chmod -R 777 $HOME/Library/Caches/Homebrew > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Caches/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/Caches/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/Code/User/workspaceStorage/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/discord/Cache/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/discord/Code\ Cache/js* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/Application\ Support/Google/Chrome/Default/Application\ Cache/* > /dev/null 2>&1
sleep 1;
# displaying free storage after cleaning on your mac
STORAGE_AVAILABLE=$(df -h | grep "$USER" | awk '{print($4)}' | tr 'i' 'B')
printf "• Free storage after cleaning:$GREEN $STORAGE_AVAILABLE $RESET \n"
