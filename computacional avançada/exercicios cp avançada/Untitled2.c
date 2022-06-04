#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <math.h>
double main()

{
    int i;
    srand(time(NULL));
    double x;
    for (i = 0; i < 100; i++) {
    double u=(double) rand() / (double) RAND_MAX;
    printf("u: %lf",u );
    x+=u;
    }

    double func=(1/sqrt(2*M_PI)*exp((pow(-x,2)/2)));
    double cont;
    cont= func/100;
    return cont;
    printf("resultado: %lf", cont);

   }
