# Enable debugging and suppress pesky warnings
CFLAGS ?= -g -w

all:	example

clean:
	rm -f example

vulnerable: vulnerable.c
	${CC} ${CFLAGS} example.c -o example
