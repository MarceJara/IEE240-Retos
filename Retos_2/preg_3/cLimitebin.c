#include <stdio.h>
#include <stdlib.h>

double binaryExp(double a, int b){
    if(b==0) return 1;
    double tmp = binaryExp(a,b/2);
    double result = tmp*tmp;
    if(b%2 == 1) result *= a;
    return result;    
}

double cLimiteBin(int N){
    double base = 1.0 + 1.0/(double)N;
    double result = binaryExp(base, N);

    return result;
}
