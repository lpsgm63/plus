all: plus

sum.o: sum.c sum.h
	gcc -c -o sum.o sum.c 
main.o: main.c sum.h
	gcc -c -o main.o main.c 
plus: main.o sum.o
	gcc -o plus main.o sum.o
clean:
	rm -f *.o 
	rm -f plus
