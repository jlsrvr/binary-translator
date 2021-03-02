NAME		=	bi-translator

CC			=	gcc

IDIR		=	../libft/srcs/headers

LIBS		=	-L../libft/srcs -lft

OBJS		=	$(SRC:.c=.o)

SRC 		=	translator.c

RM			=	rm -f

FLAGS		=	-Wall -Wextra

.c.o:
	$(CC) $(FLAGS) -I$(IDIR) -c $< -o $(<:.c=.o)

all:		$(NAME)

$(NAME):	make_lib $(OBJS)
			$(CC) $(CFLAGS) -o $(NAME) $(OBJS) $(LIBS)

make_lib:
	@make libft.a -C ../libft/srcs

clean:
	$(RM) $(OBJS)
	@make clean -C ../libft/srcs

fclean: 	clean
	$(RM) $(NAME)
	@make fclean -C ../libft/srcs

re:			fclean all

.PHONY:	all clean fclean re
