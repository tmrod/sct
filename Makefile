# sct - set color temperature 

SRC = sct.c 
OBJ = ${SRC:.c=.o}

install: sct.c
	cc -std=c99 -O2 -I /usr/X11R6/include -o sct sct.c -L /usr/X11R6/lib -lm -lX11 -lXrandr
	cp sct ~/.scripts/tools/sct

clean:
	rm -f sct 
