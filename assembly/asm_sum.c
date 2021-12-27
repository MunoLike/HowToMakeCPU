#include <stdio.h>

void main(void){
    short sum = 0;
    printf("sum=%d\n", sum);
    __asm__ __volatile__(
        "mov ax, 0;"
        "mov bx, 1;"
        "LOOP1: cmp bx, 11;"
        "je MOUT;"
        "add ax, bx;"
        "inc bx;"
        "jmp LOOP1;"
        "MOUT: mov %0, ax;"
        : "=r"(sum)
    );
    printf("sum=%d\n", sum);
}