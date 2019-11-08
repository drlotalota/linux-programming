/* ********************************************************************
 * utils.c
 * ********************************************************************/

#include <stdio.h>

#define VERSION "1.0.0"

int util_sum(int x, int y)
{
    return x + y;
}

void util_version(void)
{
    printf("Current version of utils is %s.\n", VERSION);
}
