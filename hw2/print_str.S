.section .data
stringvar:
    .ascii "0123456789abcdef\n"
.section .text
.globl _start
_start:
#swap
    movb stringvar, %al
    movb stringvar+1, %ah
    movb %ah, stringvar
    movb %al, stringvar+1

    movb stringvar+2, %al
    movb stringvar+3, %ah
    movb %ah, stringvar+2
    movb %al, stringvar+3

    movb stringvar+4, %al
    movb stringvar+5, %ah
    movb %ah, stringvar+4
    movb %al, stringvar+5

    movb stringvar+6, %al
    movb stringvar+7, %ah
    movb %ah, stringvar+6
    movb %al, stringvar+7

    movb stringvar+8, %al
    movb stringvar+9, %ah
    movb %ah, stringvar+8
    movb %al, stringvar+9

    movb stringvar+10, %al
    movb stringvar+11, %ah
    movb %ah, stringvar+10
    movb %al, stringvar+11

    movb stringvar+12, %al
    movb stringvar+13, %ah
    movb %ah, stringvar+12
    movb %al, stringvar+13

    movb stringvar+14, %al
    movb stringvar+15, %ah
    movb %ah, stringvar+14
    movb %al, stringvar+15
#output
    movl $4, %eax
    movl $1, %ebx
    movl $stringvar, %ecx
    movl $17, %edx
    int $0x80
#exit
    movl $1, %eax
    movl $0, %ebx
    int $0x80
