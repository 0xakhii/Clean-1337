# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojamal <ojamal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/20 09:51:00 by ojamal            #+#    #+#              #
#    Updated: 2023/02/20 10:40:34 by ojamal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RESET="\033[0m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
MAGENTA="\e[1;35m"
CYAN="\e[1;36m"

#getting the clean.sh file
curl -o $HOME/.clean.sh https://raw.githubusercontent.com/cat161/Clean-1337/main/clean.sh >> /dev/null 2>&1
printf "• Downloading the clean script...\n"
sleep 1;
printf "•$GREEN Done $RESET\n"
#making it executable
chmod +x $HOME/.clean.sh
#defining the command : clean
alias clean="sh $HOME/.clean.sh"
#making the alias permanent
if [ -f $HOME/.zshrc ]; then
	echo "alias clean=\"zsh $HOME/.clean.sh\"" >> $HOME/.zshrc
elif [ -f $HOME/.bashrc ]; then
	echo "alias clean=\"sh $HOME/.clean.sh\"" >> $HOME/.bashrc
fi
#displaying the message
printf "You can now clean your mac by typing : $GREEN clean $RESET in your terminal \n"