# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kkinzers <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/25 20:40:58 by kkinzers          #+#    #+#              #
#    Updated: 2018/11/17 17:18:02 by kkinzers         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strstr.c \
      ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
      ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_strncat.c \
      ft_strlcat.c ft_strchr.c ft_strrchr.c ft_memset.c ft_bzero.c ft_memcpy.c \
      ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_putchar.c ft_putstr.c \
      ft_putendl.c ft_putnbr.c ft_strequ.c ft_strnequ.c ft_strsub.c ft_putchar_fd.c \
      ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strsplit.c ft_itoa.c \
      ft_strtrim.c ft_strjoin.c ft_strmap.c ft_strmapi.c ft_striter.c ft_striteri.c \
      ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c ft_lstadd.c \
      ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstiter.c ft_lstmap.c ft_charrev.c \
	  ft_countword.c ft_strndup.c ft_strlencmp.c ft_sqrt.c ft_swap.c

SRCO = $(SRC:.c=.o)

FLAGS = -Wall -Wextra -Werror -I. -c
all: $(NAME)

$(NAME): $(SRCO)
	ar rc $(NAME) $(SRCO)
$(SRCO): $(SRC)
	gcc $(FLAGS) $(SRC)
clean:
	rm -f $(SRCO)
fclean: clean
	rm -f $(NAME)
re: fclean all
