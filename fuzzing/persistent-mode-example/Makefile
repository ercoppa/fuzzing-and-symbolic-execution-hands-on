# Enable debugging and suppress pesky warnings
CFLAGS ?= -g -w

all:	driver

clean:
	rm -f driver

driver: driver.c library.c library.h
	${CC} ${CFLAGS} driver.c library.c -o driver
