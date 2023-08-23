NAME	=	libftprintf.a

CFLAGS =  -W -Wall -Wextra -Werror
XFLAGS	= -fsanitize=address -g2
AR		= ar -rcs
RM		= rm -f
MD		= mkdir -p
CP		= cp -f


PRINTF_SRCS	= ft_printf.c \
		  ft_printf_format.c \
		  ft_printf_char.c \
		  ft_printf_str.c \
		  ft_printf_nbr.c \
		  ft_printf_unsigned.c \
		  ft_printf_x.c \
		  ft_printf_x_uppercase.c \
		  ft_printf_ptr.c \
		  ft_printf_utils.c \

SRC_DIR = src/
INC_DIR = inc/
OBJ_DIR = obj/

INCLUDE = -I $(INC_DIR)

SRCS	+= $(addprefix $(SRC_DIR), $(PRINTF_SRCS))
OBJS	= $(addprefix $(OBJ_DIR), $(SRCS:.c=.o))
DEPS	= $(addsuffix .d, $(basename $(OBJS)))


$(OBJ_DIR)%.o: %.c Makefile
		@$(MD) $(dir $@)
		@$(CC) -MT $@ -MMD $(CFLAGS) $(INCLUDE) -c $< -o $@
		@echo "$(WARN_COLOR)Compiling: $<$(NO_COLOR)"

$(NAME):	$(OBJS) 
			@ar rcs $(NAME) $(OBJS)
			@echo "$(OK_COLOR)Printf Compiled!$(NO_COLOR)"

all:		$(NAME)

clean:
			@$(RM) -r $(OBJ_DIR)
			@echo "$(ERROR_COLOR)Dependencies and objects removed$(NO_COLOR)"

fclean:		clean  
			@$(RM) $(NAME)
			@echo "$(ERROR_COLOR)libftprintf.a removed$(NO_COLOR)"
re:		fclean all

-include $(DEPS)

.PHONY:	all clean fclean re

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧─COLOR──✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

NO_COLOR		=	\x1b[0m
OK_COLOR		=	\x1b[32;01m
ERROR_COLOR		=	\x1b[31;01m
WARN_COLOR		=	\x1b[33;01m

OK_STRING		=	$(OK_COLOR)[OK]$(NO_COLOR)
ERROR_STRING	=	$(ERROR_COLOR)[ERRORS]$(NO_COLOR)
WARN_STRING		=	$(WARN_COLOR)[WARNINGS]$(NO_COLOR)
