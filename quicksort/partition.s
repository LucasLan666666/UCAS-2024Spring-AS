/* ========================================================================== */
/*                                partition_asm                               */
/* ========================================================================== */

    .global	partition_asm
    .type   partition_asm, @function
partition_asm:
    /* backup the value of callee-saved registers to memory */
    pushl   %edi
    pushl   %esi
    pushl   %ebx

    /* parameters */
    movl    16(%esp), %eax          # eax: &arr[0]
    movl    20(%esp), %ebx          # ebx: low
    movl    24(%esp), %ecx          # ecx: high
    movl    (%eax,%ebx,4), %edx     # edx: base
    jmp     end                     # whether to start loop

loop_1:
    cmpl    %ecx, %ebx
    jge     exchage_1               # if low >= high, jump to exchage_1
    cmpl    %edx, (%eax,%ecx,4)
    jl      exchage_1               # if arr[high] < base, jump to exchage_1
    dec     %ecx                    # high--
    jmp     loop_1                  # loop

exchage_1:
    /* arr[low] = arr[high] */
    movl    (%eax,%ecx,4), %esi     # esi = arr[high]
    movl    %esi, (%eax,%ebx,4)     # arr[low] = esi

loop_2:
    cmpl    %ecx, %ebx
    jge     exchage_2               # if low >= high, jump to exchage_2
    cmpl    %edx, (%eax,%ebx,4)
    jg      exchage_2               # if arr[low] > base, jump to exchage_2
    inc     %ebx                    # low++
    jmp     loop_2                  # loop

exchage_2:
    /* arr[high] = arr[low] */
    movl    (%eax,%ebx,4), %esi     # esi = arr[low]
    movl    %esi, (%eax,%ecx,4)     # arr[high] = esi

end:
    /* determine whether to keep loop */
    cmpl    %ecx, %ebx              # low < high
    jl      loop_1                  # if low < high, loop

    /* restore arr[low] and set return value */
    movl    %edx, (%eax,%ebx,4)     # arr[low] = base
    movl    %ebx, %eax              # return low

    /* restore the value of callee-saved registers */
    popl    %ebx
    popl    %esi
    popl    %edi

    /* return */
    ret
