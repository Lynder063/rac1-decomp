#include "common.h"

extern int D_0015EFB4 MACRO_ADDR;
extern int D_0015EFB0 MACRO_ADDR;

/* stores a constant based on bit 0x20 of input */
void func_L00_0024BFFC(int val) {
    if (val & 0x20) {
        D_0015EFB4 = (val ^ 0x20);
        D_0015EFB0 = 0xC;
    }
}
