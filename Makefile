.SUFFIXES: .c .o .a
vpath %.c src
vpath %.h incl

%.c:
	gcc -c $<

lib/%.a:
	mkdir -p lib
	ar rs $@ $^

lib/%.so:
	mkdir -p lib
	gcc -shared -o $@ $<

%:
	gcc -o $@ $^ -L./lib -I./incl

main: main.c lib/libsquare.a lib/libcube.so

lib/libsquare.a: square.o

lib/libcube.so: cube.o

square.o: square.c

cube.o: cube.c
