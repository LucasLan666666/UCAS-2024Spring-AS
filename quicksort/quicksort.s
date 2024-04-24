/* ========================================================================== */
/*                                quicksort_asm                               */
/* ========================================================================== */

    .globl  quicksort_asm
    .type   quicksort_asm, @function
quicksort_asm:
    /* backup the value of callee-saved registers to memory */
    pushl   %edi
    pushl   %esi
    pushl   %ebx

    /* determine whether to keep sort */
    movl    20(%esp), %eax          # low
    cmpl    24(%esp), %eax
    jge     end                     # if low >= high, jump to end

sort:
    /* call partition_asm and return the result to pivot */
    pushl   24(%esp)                # push high to stack
    pushl   24(%esp)                # push low to stack
    pushl   24(%esp)                # push &arr[0] to stack
    call    partition_asm
    movl    %eax, %edi              # edi: pivot
    addl    $12, %esp               # pop
    leal    1(%edi), %esi           # esi: pivot + 1
    dec     %edi                    # edi: pivot - 1

    /* quicksort_asm(arr, low, pivot - 1) */
    pushl   %edi                    # push (pivot - 1) to stack
    pushl   24(%esp)                # push low to stack
    pushl   24(%esp)                # push &arr[0] to stack
    call    quicksort_asm
    addl    $12, %esp               # pop

    /* quicksort_asm(arr, pivot + 1, high) */
    pushl   24(%esp)                # push high to stack
    pushl   %esi                    # push (pivot + 1) to stack
    pushl   24(%esp)                # push &arr[0] to stack
    call    quicksort_asm
    addl    $12, %esp               # pop

end:
    /* restore the value of callee-saved registers */
    popl    %ebx
    popl    %esi
    popl    %edi

    /* return */
    ret
