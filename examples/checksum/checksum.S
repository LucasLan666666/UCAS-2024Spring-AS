# checksum.s

.section .data
str:
	.asciz "Hello, World!"
output:
	.asciz "Checksum of '%s' is %u"

.section .text
.globl _start
_start:
	push $str
	call checksum			# call function checksum
	addl $4, %esp

	push %eax				# parameter 3
	push $str				# parameter 2
	push $output			# parameter 1
	call printf				# printf in libc
	addl $8, %esp

	push $0
	call exit				# exit in libc

.globl checksum
.type checksum,@function
checksum:
	movl 4(%esp), %ecx		# fetch the parameter. address of str[]
	xorl %eax, %eax			# sum = 0
	movsbl (%ecx), %edx
	testb %dl, %dl
	je .L4
.L3:
	addl $1, %ecx			# str++
	addl %edx, %eax			# sum = sum + *str
	movsbl (%ecx),%edx		# load a byte: *str
	testb %dl, %dl			# while(*str), not '\0'
	jne .L3
	ret
.L4:
	ret
