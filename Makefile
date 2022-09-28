SHELL		=	/bin/sh

NAME		=	libft.a

CC			=	gcc
CPPFLAGS	=	-Wall -Wextra -Werror

AR			=	ar
ARFLAGS		=	crs

RM			=	rm -f

HEADER		=	string.h
SOURCE		=	strlen.c
OBJECT		=	strlen.o

.SUFFIXES	:
.SUFFIXES	:	.c .o

.PHONY		:	all check clean fclean re

all			:	$(NAME)

$(NAME)		:	$(OBJECT)
				$(AR) $(ARFLAGS) $(NAME) $?

%.o			:	%.c $(HEADER)
				$(CC) $(CPPFLAGS) -c $< -o $@

check		:	all
				$(CC) test.c $(NAME) -o test.out
				./test.out

clean		:
				$(RM) $(OBJECT)

fclean		:
				$(RM) $(OBJECT)
				$(RM) $(NAME)

re			:	fclean all
