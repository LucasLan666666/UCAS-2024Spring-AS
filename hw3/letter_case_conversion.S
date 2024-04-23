.section .data
    iostring:   .asciz "ab1g2hA0H56po9wK78nB\n"
.section .text
.globl _start
_start:
# init
    movl    $21, %ecx # the number of remain characters
    movl    $0, %eax # the order of the character
    movl    $iostring, %ebx # the iostring address
loopl:
    movb    (%ebx, %eax), %dl # the address of the character
    cmpb    $97, %dl # compare with 'a'
    jl      loop_end # less than 'a', jump to the end
    cmpb    $122, %dl # compare with 'z'
    jg      loop_end # greater than 'z', jump to the end
    sub     $32, %dl # change lower-case to upper-case
loop_end:
    movb    %dl, (%ebx, %eax) # write character to memory
    inc     %eax # the next character
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
