#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Testing without HIP headers\n");
    printf("If this runs, the issue is with HIP initialization\n");
    sleep(1);
    return 0;
}
