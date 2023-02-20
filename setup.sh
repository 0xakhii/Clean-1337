# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ojamal <ojamal@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/20 09:51:00 by ojamal            #+#    #+#              #
#    Updated: 2023/02/20 10:00:38 by ojamal           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RESET="\033[0m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
MAGENTA="\e[1;35m"
CYAN="\e[1;36m"

#defining the command : clean
alias clean="sh $HOME/.clean.sh"
#getting the clean.sh file
curl -o $HOME/.clean.sh 
#making it executable
chmod +x $HOME/.clean.sh
#displaying the message

printf "You can now clean your mac by typing : $GREEN clean $RESET in your terminal \n"