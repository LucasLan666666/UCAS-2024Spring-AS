.section .text
    .global print_hex
    .global get_sign

print_hex:
    pushl   %ebx

    movl    8(%esp), %edx       # edx: x
    subl    $12, %esp           # buffer

    /* get sign of x */
    pushl   %edx
    call    get_sign            # eax: sign
    popl    %edx

    /* get absolute value of x */
    testl   %eax, %eax
    je      no_neg
    negl    %edx
    no_neg:

    /**
     * fulfill the string
     */

    movl    %esp, %ecx
    addl    $7, %ecx            # ecx: the last byte of buffer
    movb    $10, 1(%ecx)        # '\n'

    fulfill:
    movl    %edx, %ebx
    andl    $0xf, %ebx          # ebx: low 4 bits

    /* 0~9 or a~f */
    cmpl    $10, %ebx
    jb      digit
    /* alpha */
    leal    39(%ebx), %ebx      # 'a' - 10 - '0': 39
    digit: /* digit */
    leal    48(%ebx), %ebx      # '0': 48

    movb    %bl, (%ecx)

    shrl    $4, %edx
    dec     %ecx
    cmpl    %esp, %ecx
    jae      fulfill

    /**
     * complete with '-0x'
     */
    jump_pre_0:
    inc     %ecx
    cmpb    $48, (%ecx)
    je      jump_pre_0

    /* case 0 */
    cmpb    $10, (%ecx)
    jne     prefix
    dec     %ecx

    prefix:
    subl    $2, %ecx
    movb    $45, -1(%ecx)       # '-'
    movb    $48, (%ecx)         # '0'
    movb    $120, 1(%ecx)       # 'x'
    subl    %eax, %ecx

    /* get length */
    movl    %esp, %edx
    addl    $9, %edx
    subl    %ecx, %edx


    /* output */
    movl    $4, %eax
    movl    $1, %ebx
    int	    $0x80

    addl    $12, %esp
    popl    %ebx
    ret


get_sign:
    movl    4(%esp), %eax
    shrl    $31, %eax
    ret
