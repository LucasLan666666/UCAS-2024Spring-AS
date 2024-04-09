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

	movl $inputbuf, %ebx	# ebx point to inputbuf
	movl $outputbuf, %ecx	# ecx point to outputbuf
	xorl %edx, %edx			# count the len of outputbuf

L1:
	movb (%ebx), %al
	cmpb $' ', %al
	je	L3
	cmpb $9, %al
	jb	L2
	cmpb $13, %al
	jbe	L3
L2:
	movb %al, (%ecx)
	inc %ebx
	inc %ecx
	inc %edx
	jmp	L1
L3:
	movb $10, (%ecx)
	inc %edx

#output
	movl $4, %eax
	movl $1, %ebx
	movl $outputbuf, %ecx
#	mov $?, %edx
	int $0x80

#exit
	movl $1, %eax
	movl $0, %ebx
	int $0x80
