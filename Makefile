main: main.c libsquare.a libcube.so
	gcc -o main main.c libsquare.a libcube.so

square.o: square.c
	gcc -c square.c

cube.o: cube.c
	gcc -c cube.c 

libsquare.a: square.o
	ar rs libsquare.a square.o

libcube.so: cube.o
	gcc -shared -o libcube.so cube.o

