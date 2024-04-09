#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

#define SIZE 2000

void matrix_multiply(double A[SIZE][SIZE], double B[SIZE][SIZE], double C[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            C[i][j] = 0;
            for (int k = 0; k < SIZE; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

float time_diff(struct timeval *start, struct timeval *end) {
  return (end->tv_sec - start->tv_sec) + 1e-6 * (end->tv_usec - start->tv_usec);
}

int main() {

	double A[SIZE][SIZE];
	double B[SIZE][SIZE];
	double C[SIZE][SIZE];

	struct timeval start, end;

    if (A == NULL || B == NULL || C == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }

    // Initialize matrices A and B here
	for(int i=0; i<SIZE; i++)
		for(int j=0; j<SIZE;j++)
		{
			srand(time(0));
		    A[i][j]= (double)rand()/RAND_MAX*500 - 250;
		}

	for(int i=0; i<SIZE; i++)
		for(int j=0; j<SIZE;j++)
		{
			srand(time(0));
		    B[i][j] = (double)rand()/RAND_MAX*500 - 250;
		}

	gettimeofday(&start,NULL);

	// Perform matrix multiplication
    matrix_multiply(A, B, C);

	gettimeofday(&end,NULL);

    printf("time spent: %0.8f sec\n", time_diff(&start, &end));

    // Do something with the result matrix C
    // ...


    return 0;
}
