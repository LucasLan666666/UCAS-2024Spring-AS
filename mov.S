#mov.S
.section .data
    bytevar:	.byte 1, 2, 3, 4, 0, 0, 0, 0
    wordvar:	.word 0x100, 0x200, 0, 0
    intvar:	.int 0
.section .text
.globl _start
_start:
    movl	$bytevar, %ebx      # 地址
    movb	1(%ebx), %al                      # 2
    movb	bytevar+2, %ah      # 3

    movw	%ax, %cx		# 0x0302
    movl	$8, %esi			#
    movw	%cx, 4(%ebx,%esi)	# bytevar+12

    movl	8(%ebx), %edx		# 0x0200100
    movl	%edx, (%ebx, %esi, 2)	# bytevar+16
#exit
    movl	$1, %eax
    movl	$0, %ebx
    int	$0x80
