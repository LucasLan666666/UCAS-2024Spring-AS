#include <stdio.h>

// 自己写的测试程序

unsigned int shld5(unsigned int a, unsigned int b);
unsigned int shld5_gold(unsigned int a, unsigned int b);


int
main(void)
{
    int a, b;
    a = 0xabcd1234;
    b = 0x87654321;

    printf("your result: %x\n", shld5(a, b));
    printf("gold result: %x\n", shld5_gold(a, b));

    return 0;
}

unsigned int
shld5_gold(unsigned int a, unsigned int b)
{
    unsigned int result;
    result = (a << 5) | (b >> (32-5));
    return result;
}