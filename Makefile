NAME		:=	libasm.a
TESTNAME	:=	test
SRC_ASM		:=	ft_read.s ft_write.s ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s
SRC_C		:=	main.c
OBJ			:=	$(SRC_ASM:.s=.o)
OBJ_C		:=	$(SRC_C:.c=.o)

CC		:=	cc

all : $(NAME)

$(NAME): $(OBJ)
	ar rcs $@ $^

$(TESTNAME): $(NAME) $(OBJ_C)
	$(CC) -o $@ $^ -L . -l asm

%.o: %.s
	nasm -f elf64 -o $@ $<

%.o: %.c
	$(CC) -o $@ -c $<

clean : 
	rm -f $(OBJ) $(OBJ_C)

fclean : clean
	rm -f $(NAME) $(TESTNAME)

re: fclean all

.PHONY: all clean fclean re