SRC	=	main.c

OBJ	=	$(SRC:.c=.o)

NAME	=	libmy.a

all:		$(NAME)

$(NAME):	$(OBJ)
		ar rc $(NAME) $(OBJ)

test_run: $(NAME)

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)
		rm -f ../$(NAME)

re:		clean fclean all