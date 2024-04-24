all: quicksort

quicksort: partition.o quicksort.o quicksort-main.c
	gcc -g -static -m32 -o quicksort partition.o quicksort.o quicksort-main.c

partition.o: partition.s
	as --32 -gstabs -o partition.o partition.s

quicksort.o: quicksort.s
	as --32 -gstabs -o quicksort.o quicksort.s

clean:
	rm -f *.o quicksort
