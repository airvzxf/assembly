//https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml#fib_64l.asm

#include <stdio.h>

int main(int argc, char *argv[])
{
    long int c = 46;  // loop counter
    long int a = 1;   // current number, becomes next
    long int b = 2;   // next number, becomes sum a+b
    long int d;       // temp

    for(c=c; c!=0; c--)
    {
        printf("%lld\n", a);
        d = a;
        a = b;
        b = d + b;
    }

    return 0;
}
