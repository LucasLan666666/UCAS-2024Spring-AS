.section .data
inputbuf:
	.rept 80
	.byte 0
	.endr
outputbuf:
	.rept 80
	.byte 0
	.endr

.section .text
.globl _start
_start:
#input string
	movl $3, %eax
	movl $1, %ebx
	movl $inputbuf, %ecx
	movl $80, %edx
	int $0x80

# strlen
# read() return the length of string, include the '\n'.
	decl %eax

#reverse
L2:
	addl %eax, %ecx
	decl %ecx				# ecx point to end of inputbuf
	movl $outputbuf, %edx	# edx point to head of outputbuf.
	test %eax, %eax			# length of input string
	jz	L4

L3:
	movb (%ecx), %bl
	movb %bl, (%edx)
	dec %ecx
	inc %edx
	dec %eax			# count of string.
	jnz L3
L4:
	movb $10, (%edx)
	incl %edx
	subl $outputbuf, %edx

#output
	movl $4, %eax
	movl $1, %ebx
	movl $outputbuf, %ecx
	# edx = length of string.
	int $0x80

#exit
	movl $1, %eax
	movl $0, %ebx
	int $0x80

/*
	as -32 -gstabs -o revstring2.o revstring2.s
	ld -m elf_i386 -o revstring2 revstring2.o
*/
