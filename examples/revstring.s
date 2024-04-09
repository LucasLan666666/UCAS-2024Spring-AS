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

#strlen
	movl $inputbuf, %ebx
	xorl %ecx, %ecx

L1:
	movb (%ebx), %al
	cmp	$10, %al
	je	L2
	incl %ebx
	incl %ecx		# length of input string.
	jmp	L1

#reverse
L2:
	push %ecx			# save the length.
	decl %ebx			# ebx point to end of inputbuf.
	movl $outputbuf, %edx	# edx point to head of outputbuf.
	test %ecx, %ecx		# length not 0
	jz	L4

L3:
	movb (%ebx), %al
	movb %al, (%edx)
	dec %ebx
	inc %edx
	dec %ecx
	jnz L3
L4:
	movb $10, (%edx)

#output

	pop %edx
	inc %edx
	movl $4, %eax
	movl $1, %ebx
	movl $outputbuf, %ecx
	int $0x80

#exit
	movl $1, %eax
	movl $0, %ebx
	int $0x80

/*
	as -32 -gstabs -o revstring.o revstring.s
	ld -m elf_i386 -o revstring revstring.o
*/
