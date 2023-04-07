# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    clean.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojamal <ojamal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/16 15:57:51 by ojamal            #+#    #+#              #
#    Updated: 2023/04/07 01:40:53 by ojamal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RESET="\033[0m"
RED="\e[1;31m"
GREEN="\e[1;32m"

# displaying free storage on your mac
FREE_STORAGE=$(df -h | grep "$USER" | awk '{print($4)}' | tr 'i' 'B')
printf "• Your current storage:$GREEN $FREE_STORAGE $RESET \n"
printf "$RED Cleaning your mac... $RESET\n"
# cleaning
/bin/rm -rf $HOME/.Trash/* > /dev/null 2>&1
/bin/rm -rf $HOME/Library/*.42* > /dev/null 2>&1
/bin/rm -rf "$HOME"/*.42* > /dev/null 2>&1
/bin/rm -rf "$HOME"/.zcompdump* > /dev/null 2>&1
/bin/rm -rf "$HOME"/.cocoapods.42_cache_bak* > /dev/null 2>&1
/bin/chmod -R 777 $HOME/Library/Caches/Homebrew > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Slack/Cache/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/discord/Cache/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/discord/Code\ Cache/js* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/discord/Crashpad/completed/*  > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Code/Cache/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Code/CachedData/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Code/Crashpad/completed/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Code/User/workspaceStorage/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Service\ Worker/CacheStorage/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Google/Chrome/Default/Service\ Worker/CacheStorage/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/Application\ Cache/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Google/Chrome/Default/Application\ Cache/* > /dev/null 2>&1
/bin/rm -fr "$HOME"/Library/Application\ Support/Google/Chrome/Crashpad/completed/* > /dev/null 2>&1
find "$HOME"/Desktop -name .DS_Store -depth -exec /bin/rm {} \; > /dev/null 2>&1
sleep 1;
printf "$GREEN Done $RESET\n"
# displaying free storage after cleaning on your mac
STORAGE_AVAILABLE=$(df -h | grep "$USER" | awk '{print($4)}' | tr 'i' 'B')
printf "• Free storage after cleaning:$GREEN $STORAGE_AVAILABLE $RESET \n"
