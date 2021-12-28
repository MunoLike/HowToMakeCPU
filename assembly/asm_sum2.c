#include <stdio.h>

void main(void){
    short sum = 0;
    printf("sum=%d\n", sum);

    __asm__ __volatile__(
        "mov ax, 0;"
        "mov bx, 1;"
"LOOP1:  add ax, bx;"
        "inc bx;"
        "cmp bx, 11;"
        "jne LOOP1;"
        "mov %[sum], ax;"
        : [sum]"=r"(sum)

        
    );
    printf("sum=%d\n", sum);
}