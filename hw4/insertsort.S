.section .data
    testdata:   .byte 'A', '0', 'z', 'P', '8', 'r', 'Z', '2', 'f', 'H', '\n'
.section .text
.globl _start
_start:
    pushl   %eax
    pushl   %ecx
    pushl   %edx
    pushl   $10
    pushl   $testdata
    call    insert_sort
    addl    $8, %esp
    popl    %edx
    popl    %ecx
    popl    %eax
# output
    movl    $4, %eax
    movl    $1, %ebx
    movl    $testdata, %ecx
    movl    $11, %edx
    int	    $0x80
# exit
    movl    $1, %eax
    movl    $0, %ebx
    int	    $0x80

.globl insert_sort
insert_sort:
    movl    $1, %eax                # eax: i
    movl    8(%esp), %ecx           # ecx: n
    movl    4(%esp), %esi           # esi: testdata
loop_for:
    cmpl    %ecx, %eax
    jge     end_0
    movb    (%esi, %eax, 1), %bl    # bl: tmp = a[i]
    leal    -1(%eax), %edi          # edi: j = i - 1
loop_while:
    cmpl    $0, %edi
    jl      end_1                   # j < 0
    cmpb    %bl, (%esi, %edi, 1)
    jle     end_1                   # a[j] <= tmp
    movb    (%esi, %edi, 1), %dl    # dl: temperary
    movb    %dl, 1(%esi, %edi, 1)   # a[j+1] = a[j]
    dec     %edi                    # j--
    jmp     loop_while
end_1:
    movb    %bl, 1(%esi, %edi, 1)   # a[j+1] = tmp
    inc     %eax                    # i++
    jmp     loop_for
end_0:
    ret
