NAME	=	id_reversi
SRCS	=	main.c

OBJS	=	$(SRCS:.c=.o)
LDFLAGS	= `pkg-config --libs gtk+-2.0`
CFLAGS	= -Wall -W -Werror -g `pkg-config --cflags gtk+-2.0`

all:	$(NAME)

$(NAME):	$(OBJS)
	gcc -o $(NAME) $(OBJS) $(LDFLAGS) 

clean:
	rm -f $(OBJS)

distclean:	clean
	rm -f $(NAME)

rebuild:	distclean all

debug: CFLAGS += -D___DEBUG -g3
debug: rebuild
