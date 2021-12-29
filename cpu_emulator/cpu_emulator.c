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

short mov(short, short);
short add(short, short);
short sub(short, short);
short and (short, short);
short or (short, short);
short sl(short);
short sr(short);
short sra(short);
short ldl(short, short);
short ldh(short, short);
short cmp(short, short);
short je(short);
short jmp(short);
short ld(short, short);
short st(short, short);
short hlt(short);

short op_code(short);
short op_regA(short);
short op_regB(short);
short op_data(short);
short op_addr(short);

void main() {
  short pc;
  short ir;
  short flag_eq;

  assmbler();

  pc = 0;
  flag_eq = 0;

  do {
    ir = rom[pc];
    printf("%5d %5x %5d %5d %5d %5d \n", pc, ir, reg[0], reg[1], reg[2],
           reg[3]);

    pc = pc + 1;
    switch (op_code(ir)) {
      case MOV:
        reg[op_regA(ir)] = reg[op_regB(ir)];
        break;

      case ADD:
        reg[op_regA(ir)] = reg[op_regA(ir)] + reg[op_regB(ir)];
        break;

      case SUB:
        reg[op_regA(ir)] = reg[op_regA(ir)] - reg[op_regB(ir)];
        break;
      case AND:
        reg[op_regA(ir)] = reg[op_regA(ir)] & reg[op_regB(ir)];
        break;
      case OR:
        reg[op_regA(ir)] = reg[op_regA(ir)] & reg[op_regB(ir)];
        break;
      case SL:
        reg[op_regA(ir)] = reg[op_regA(ir)] << 1;
        break;
      case SR:
        reg[op_regA(ir)] = reg[op_regA(ir)] >> 1;
        break;
      case SRA:
        reg[op_regA(ir)] =
            (reg[op_regA(ir)] & 0x8000) | (reg[op_regA(ir)] >> 1);
        break;
      case LDL:
        reg[op_regA(ir)] = (reg[op_regA(ir)] & 0xff00) | (op_data(ir) & 0x00ff);
        break;
      case MOV:
        reg[op_regA(ir)] = reg[op_regB(ir)];
        break;
      case MOV:
        reg[op_regA(ir)] = reg[op_regB(ir)];
        break;
      case MOV:
        reg[op_regA(ir)] = reg[op_regB(ir)];
        break;
      case MOV:
        reg[op_regA(ir)] = reg[op_regB(ir)];
        break;
      case MOV:
        reg[op_regA(ir)] = reg[op_regB(ir)];
        break;

      default:
        break;
    }
  } while (op_code(ir) != HLT);
}