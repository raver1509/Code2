.SUFFIXES: .c .o .a

%.c:
	gcc -c $<

%:
	gcc -o $@ $^

%.a:
	ar rs $@ $^

%.so:
	gcc -shared -o $@ $^

main: main.c libsquare.a libcube.so

square.o: square.c

cube.o: cube.c

libsquare.a: square.o

libcube.so: cube.o