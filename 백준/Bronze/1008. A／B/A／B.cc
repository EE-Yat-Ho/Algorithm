#include <iostream>
#include <stdio.h>

int main(){
    double a,b;
    double f;
    scanf("%lf %lf",&a,&b);
    f = a/b;
    printf("%.10lf",f);
    return 0;
}