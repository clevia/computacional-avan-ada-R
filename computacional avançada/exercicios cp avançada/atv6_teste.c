#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
double main()

{
    int i;
    srand(time(NULL));
    for (i = 0; i < 100; i++) {
    double u=(double) rand() / (double) RAND_MAX;
    printf("u: %lf",u );

    }
 double x;
    x= u;
    x=x+u;
    printf("%lf",x);
}

