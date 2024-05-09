#include <stdio.h>

extern double array_accu(double array[], int n);

int
main(int argc, char** argv)
{
    double array[10] = {
         3.4, 4.6,-4.9, 1.8,-1.3,
        -1.8, 4.0, 2.4,-3.5, 1.5
    };

    double sum = array_accu(array, 10);

    printf("%f\n", sum);
    return 0;
}
