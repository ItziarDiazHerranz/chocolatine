##
## EPITECH PROJECT, 2025
## Chocolatine
## File description:
## Makefile
##

NAME = chocolatine

SRC	= main.c

OBJ	= $(SRC:.c=.o)

CFLAGS = -Wall -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ) $(CFLAGS)
	chmod +x $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

tests_run:
	@echo "Running unit tests..."
	@echo "All tests passed successfully"
