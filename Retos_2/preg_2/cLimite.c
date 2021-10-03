#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double cLimite(int N){
    double f=1;
    for(int i = 0; i<N; i++){
        double tmp = 1 + 1/(double) N;
        f *= tmp;
    }
    return f;
}
