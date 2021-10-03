#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double cVarianza(double *arr,int N){
    double mu = 0;
    for (int i = 0; i < N; i++)
    {
        mu += arr[i];
    }
    mu = N != 0 ? mu/(double)N : 0;
    //return N != 0 ? mu/(double)N : 0;

    double sum = 0;

    for (int i = 0; i < N; i++)
    {
        sum += pow(arr[i]-mu,2);
    }
    
    return N != 0 ? sum/(double)N : 0;
}
