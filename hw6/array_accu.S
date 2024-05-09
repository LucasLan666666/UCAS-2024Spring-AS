/* Return the sum of a double array */

.section .text
    .global array_accu


array_accu:

    movl    %esi, %ecx
    pxor    %xmm0, %xmm0

    /* sum all numbers in the array */
    sum:
        movl    %esi, %edx
        subl    %ecx, %edx
        leaq    (%rdi,%rdx,8), %r8
        movsd   (%r8), %xmm1
        addsd   %xmm1, %xmm0
        loop    sum

    /* return */
    ret
