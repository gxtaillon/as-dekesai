#include <stdio.h>
#include <math.h>
#define _GNU_SOURCE
// feenableexcept
#include <fenv.h>

int main(int argc, char **argv) {
  feenableexcept(/*FE_INEXACT |*/
    FE_DIVBYZERO | FE_UNDERFLOW | FE_OVERFLOW | FE_INVALID);
 
  double num, denum;
  scanf("%lf\n%lf\n", &num, &denum);
  num = sqrt(num);
  printf("%f\n", num/denum);
}
