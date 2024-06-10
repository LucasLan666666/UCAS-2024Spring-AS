#include <stdio.h>

extern void reverse(int* a, int length);

void
print_array(int* a, int length)
{
    int i;
    for (i = 0; i < length - 1; i++)
        printf("%2d,", a[i]);
    printf("%2d\n", a[i]);
}

int
main(int argc, char** argv)
{
    int i;
    int array[10] = {40,81,53,8,64,75,12,26,97,39};

    printf("===============================================================\n");

    printf("Before reverse:   ");
    print_array(array, 10);

    reverse(array, 10);

    printf("After reverse:    ");
    print_array(array, 10);

    printf("===============================================================\n");

    return 0;
}
