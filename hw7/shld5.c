unsigned int
shld5(unsigned int a, unsigned int b)
{
    unsigned int result;
    asm(
        "shld $5, %2, %1\n\t"
        "movl %1, %0"
        :"=r"(result)
        :"r"(a), "r"(b)
    );
    return result;
}
