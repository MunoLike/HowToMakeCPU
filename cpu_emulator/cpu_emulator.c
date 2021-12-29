#include <stdio.h>

#define MOV 0
#define ADD 1
#define SUB 2
#define AND 3
#define OR 4
#define SL 5
#define SR 6
#define SRA 7
#define LDL 8
#define LDH 9
#define CMP 10
#define JE 11
#define JMP 12
#define LD 13
#define ST 14
#define HLT 15

#define REG0 0
#define REG1 1
#define REG2 2
#define REG3 3
#define REG4 4
#define REG5 5
#define REG6 6
#define REG7 7

short reg[8];
short rom[256];
short ram[256];

void assembler();

