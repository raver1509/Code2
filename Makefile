main: main.c libsquare.a libcube.so
	gcc -o $@ $^

square.o: square.c
	gcc -c $^

cube.o: cube.c
	gcc -c $^

libsquare.a: square.o
	ar rs $@ $<

libcube.so: cube.o
	gcc -shared -o $@ $<