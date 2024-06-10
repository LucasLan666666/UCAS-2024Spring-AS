#include <stdio.h>
#include <stdint.h>

extern void hex2dec(uint32_t n);
extern void hex2dec_gold(uint32_t n);

int
main(int argc, char** argv) {
    printf("Standard output:\n");
    hex2dec_gold(0x9812abcd);
    printf("Your output:\n");
    hex2dec(0x9812abcd);

    printf("Standard output:\n");
    hex2dec_gold(0x0fff);
    printf("Your output:\n");
    hex2dec(0x0fff);

    return 0;
}
