#include <stdio.h>

void main(void){
    short sum = 0;
    printf("sum=%d\n", sum);

    
    /*
    short a = 0;
    short b = 1;

    for(;b < 11;b++){
        a += b;
    }
    sum = a;
    */
    __asm__ __volatile__(
        "mov ax, 0;"
        "mov bx, 1;"
        "LOOP1: cmp bx, 11;"
        "je MOUT;"
        "add ax, bx;"
        "inc bx;"
        "jmp LOOP1;"
        "MOUT: mov %[sum], ax;"
        : [sum]"=r"(sum)

        
    );
    printf("sum=%d\n", sum);
}