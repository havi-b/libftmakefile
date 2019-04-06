NAME = 

SRC =	*.c

OBJ = 	*.o

INC = 	libft/libft.h

$(NAME) : 
		make -C ./libft/ fclean && make -C libft/
		gcc -Wall -Wextra -Werror -I $(INC) -L libft/ -lft $(SRC) -o $(NAME)

all : $(NAME)

clean :
		rm -fr $(OBJ)
		find . -type f -name '*.o' -delete
		rm -fr libft/libft.h.gch

fclean : clean
		make -C ./libft/ fclean
		rm -f $(NAME)
re :
		make fclean
		make all
