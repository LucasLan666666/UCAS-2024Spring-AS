.text
    .type reverse, @function
    .globl reverse

reverse:
    move    $t0, $a0                # t0: &a[0]
    addiu   $t1, $a1, -1            # t1: length - 1
    sll     $t1, $t1, 2             # t1: (length - 1) * 4
    addu    $t2, $t0, $t1           # t2: &a[length - 1]

loop:
    bge     $t0, $t2, end           # if (p >= q) goto end
    lw      $t3, 0($t0)             # t3: *p
    lw      $t4, 0($t2)             # t4: *q
    sw      $t4, 0($t0)             # *p = *q
    sw      $t3, 0($t2)             # *q = *p
    addiu   $t0, $t0, 4             # p++
    addiu   $t2, $t2, -4            # q--
    j       loop

end:
    jr      $ra

// void
// reverse(int* a, int length)
// {
//     int temp1, temp2;
//     int *p, *q;
//     p = a;
//     q = a + length - 1;
//     while (p < q) { // swap the *p and *q
//         temp1 = *p;
//         temp2 = *q;
//         *p = temp2;
//         *q = temp1;
//         p++;
//         q--;
//     }
// }