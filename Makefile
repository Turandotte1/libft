# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrychkov <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/04/18 20:14:44 by mrychkov          #+#    #+#              #
#    Updated: 2017/11/28 02:23:06 by mrychkov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# colours

NO_COLOR = \033[0m
WAIT_COLOR = \033[1;33m
OK_COLOR = \033[1;32m
CLEAN_COLOR = \033[1;36m

# compiliation

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

# files

SRC = ft_atoi.c \
ft_bzero.c \
ft_isalnum.c \
ft_isalpha.c \
ft_isascii.c \
ft_isdigit.c \
ft_isprint.c \
ft_toupper.c \
ft_tolower.c \
ft_tolower_str.c \
ft_memccpy.c \
ft_memcpy.c \
ft_memchr.c \
ft_memcmp.c \
ft_memmove.c \
ft_memset.c \
ft_strcat.c \
ft_strchr.c \
ft_strcpy.c \
ft_strdup.c \
ft_strlcat.c \
ft_strlen.c \
ft_strncat.c \
ft_strncpy.c \
ft_strnstr.c \
ft_strrchr.c \
ft_strstr.c \
ft_strncmp.c \
ft_strcmp.c \
ft_memalloc.c \
ft_putchar.c \
ft_putchar_fd.c \
ft_putstr.c \
ft_putstr_fd.c \
ft_strnew.c \
ft_putnbr.c \
ft_putnbr_fd.c \
ft_putendl.c \
ft_putendl_fd.c \
ft_memdel.c \
ft_strdel.c \
ft_strclr.c \
ft_striter.c \
ft_striteri.c \
ft_strmap.c \
ft_strmapi.c \
ft_strsub.c \
ft_strequ.c \
ft_strnequ.c \
ft_strjoin.c \
ft_strtrim.c \
ft_strsplit.c \
ft_itoa.c \
ft_lstdelone.c \
ft_lstdel.c \
ft_lstadd.c \
ft_lstiter.c \
ft_lstmap.c \
ft_lstnew.c \
ft_isspace.c \
ft_int_size.c \
ft_strrev.c \
ft_wclen.c \
ft_wstrlen.c \
get_next_line.c \
ft_printf.c \
ft_printf_itoa.c \
ft_printf_args_parsing.c \
ft_printf_init.c \
ft_printf_num_conv.c \
ft_printf_print.c \
ft_printf_print_utils.c \
ft_printf_putbuffer.c \
ft_printf_recast.c \
ft_printf_spec_conv.c \
ft_printf_str_conv.c \

# dir

SRC_DIR = ./
OBJ_DIR = ./objs
INC_DIR = ./

# paths

SRC_PATH = $(addprefix $(SRC_DIR)/,$(SRC))
OBJ_PATH = $(addprefix $(OBJ_DIR)/,$(SRC:.c=.o))

# rules

.PHONY: all clean norme fclean re

all: $(NAME) $(OBJ_PATH)

$(NAME): $(OBJ_PATH)
	@ar rc $@ $(OBJ_PATH)
	@ranlib $@
	@echo "$(OK_COLOR)	--- Libft successfully compiled! ---	$(NO_COLOR)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c	
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) -I $(INC_DIR) -o $@ -c $<

norme:
	@norminette $(SRC_PATH) $(INC_DIR)

clean:
	rm -rf $(OBJ_DIR)
	
fclean: clean
	rm -rf $(NAME)

re: fclean all
