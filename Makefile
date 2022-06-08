.SUFFIXES: .c .o .a

.c.o:
	gcc -c $<

.o:
	gcc -o $@ $^

main: main.c libsquare.a libcube.so

square.o: square.c

cube.o: cube.c

libsquare.a: square.o
	ar rs $@ $<

libcube.so: cube.o
	gcc -shared -o $@ $<