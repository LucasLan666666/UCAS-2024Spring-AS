.section .data
    iostring:   .asciz "ab1g2hA0H56po9wK78nB\n"
.section .text
.globl _start
_start:
# init
    movl    $21, %ecx
    movl    $0, %eax
    movl    $iostring, %ebx # the iostring address
loopl:
    movb    (%ebx, %eax), %dl # the address of the character
    cmpb    $97, %dl
    jl      loop_end
    cmpb    $122, %dl
    jg      loop_end
    sub     $32, %dl
loop_end:
    movb    %dl, (%ebx, %eax)
    inc     %eax
    loop    loopl
# output
    movl    $4, %eax
    movl    $1, %ebx
    movl    $iostring, %ecx
    movl    $21, %edx
    int	$0x80
# exit
    movl    $1, %eax
    movl    $0, %ebx
    int	$0x80
