#include <stdio.h>

long squareme(long);
long multbyten(long);
void printstuff();
int main() {
    long number = 4;
    fprintf(stdout, "The square of %d is %d\n", number, squareme(number));
    fprintf(stdout, "Ten times %d is %d\n", number, multbyten(number));
    printstuff();
}
