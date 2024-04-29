all: insertsort

insertsort: insertsort_1 insertsort_2

insertsort_1:
	as --32 -gstabs -o insertsort_1.o insertsort_1.S
	ld -m elf_i386 -o insertsort_1 insertsort_1.o

insertsort_2:
	as --32 -gstabs -o insertsort_2.o insertsort_2.S
	gcc -static -m32 -o insertsort_2 insertsort_2.o

clean:
	rm -f *.o insertsort_1 insertsort_2
