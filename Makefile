SHELL		=	/bin/sh

NAME		=	libft.a

CC			=	cc
CPPFLAGS	=	-Wall -Wextra -Werror

AR			=	ar
ARFLAGS		=	crs

RM			=	rm -f

HEADER		=	string.h
SOURCE		=	strlen.c
OBJECT		=	strlen.o

.SUFFIXES	:
.SUFFIXES	:	.c .o

.PHONY		:	all clean fclean re

all			:	$(NAME)

$(NAME)		:	$(OBJECT)
				$(AR) $(ARFLAGS) $(NAME) $?

%.o			:	%.c $(HEADER)
				$(CC) $(CPPFLAGS) -c $< -o $@

clean		:
				$(RM) $(OBJECT)

fclean		:
				$(RM) $(OBJECT)
				$(RM) $(NAME)

re			:	fclean all
