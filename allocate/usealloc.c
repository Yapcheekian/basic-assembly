#include <stdio.h>

void *allocate(int);
void deallocate(void *);
int main() {
    char *a1 = allocate(500);
    char *a2 = allocate(1000);
    char *a3 = allocate(100);
    fprintf(stdout, "Allocations: %d, %d, %d\n", a1, a2, a3);
    deallocate(a1);
    char *a4 = allocate(1000);
    char *a5 = allocate(250);
    char *a6 = allocate(250);
    fprintf(stdout, "Allocations: %d, %d, %d, %d, %d, %d\n", a1, a2, a3, a4, a5, a6);
    fscanf(stdin, "%s", a5);
    fprintf(stdout, "%s", a5);
}
