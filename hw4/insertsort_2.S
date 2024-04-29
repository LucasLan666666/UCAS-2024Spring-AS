.section .data
    testdata:   .byte 'A', '0', 'z', 'P', '8', 'r', 'Z', '2', 'f', 'H'
    newline:    .asciz "\n"
    format:     .asciz "%c"
.section .text
.globl main
main:
    movl    $10, %ecx
a2i:
    # save testdata as array
    movl    $testdata, %eax
    leal    -1(%eax,%ecx,1), %eax
    movzbl  (%eax), %eax
    pushl   %eax
    loop    a2i

    # convey parameter
    pushl   $10
    leal    4(%esp), %eax
    pushl   %eax
    call    insert_sort

    # output
    movl    $format, (%esp)
    leal    8(%esp), %edi
    movl    $10, %ecx
print_array:
    movl    $10, %eax
    subl    %ecx, %eax
    movl    (%edi,%eax,4), %eax
    movb    %al, 4(%esp)
    movl    %ecx, %ebx
    call    printf
    movl    %ebx, %ecx
    loop    print_array

    pushl   $newline
    call    printf

    # exit
    addl    $0x34, %esp
    movl    $1, %eax
    movl    $0, %ebx
    int	    $0x80


.globl insert_sort
insert_sort:
    movl    $1, %eax                # eax: i
    movl    8(%esp), %ecx           # ecx: n
    movl    4(%esp), %esi           # esi: array
loop_for:
    cmpl    %ecx, %eax
    jge     end_0
    movl    (%esi,%eax,4), %ebx     # ebx: tmp = a[i]
    leal    -1(%eax), %edi          # edi: j = i - 1
loop_while:
    cmpl    $0, %edi
    jl      end_1                   # j < 0
    cmpl    %ebx, (%esi,%edi,4)
    jle     end_1                   # a[j] <= tmp
    movl    (%esi,%edi,4), %edx     # edx: temperary
    movl    %edx, 4(%esi,%edi,4)    # a[j+1] = a[j]
    dec     %edi                    # j--
    jmp     loop_while
end_1:
    movl    %ebx, 4(%esi,%edi,4)    # a[j+1] = tmp
    inc     %eax                    # i++
    jmp     loop_for
end_0:
    ret
