/* ********************************************************************
 * main.c
 * ********************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include "utils.h"

int main(void)
{
    int a   = 10;
    int b   = 5;
    int sum = 0;

    printf("Main application\n");

    util_version();

    sum = util_sum(a, b);
    printf("Sum of a=%d and b=%d is %d\n", a, b, sum);

    return EXIT_SUCCESS;
}
