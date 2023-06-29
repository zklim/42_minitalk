# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zhlim <zhlim@student.42kl.edu.my>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/29 16:58:02 by zhlim             #+#    #+#              #
#    Updated: 2023/06/29 17:55:54 by zhlim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= server.c

OBJS		= server.o

HEAD		= ./includes/

NAME		= server

CC			= gcc

RM			= rm -f

CFLAGS		= -Wall -Wextra -Werror

LIBFT		= libft.a

LIBPRINTF	= libftprintf.a

all:		$(NAME)

$(NAME):	$(OBJS)

$(OBJS):	$(LIBFT) $(LIBPRINTF)

$(LIBFT):	
			make -C libft/
			cp libft/libft.a .

$(LIBPRINTF):
			make -C ft_printf/
			cp ft_printf/libftprintf.a .

clean:
			$(RM) $(OBJS) $(LIBFT) $(LIBPRINTF)
			make clean -C ft_printf/
			make clean -C libft/

fclean:		clean
			$(RM) $(NAME)
			make fclean -C ft_printf/
			make fclean -C libft/

re:			fclean all

.PHONY:		all clean fclean re
