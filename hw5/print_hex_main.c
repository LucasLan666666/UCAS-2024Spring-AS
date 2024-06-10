extern void print_hex(int num);

int
main(int argc, char** argv)
{
    print_hex(0x0812abcd);
    // get 0x812abcd

    print_hex(0x80001234);
    // get -0x7fffedcc

    return 0;
}
