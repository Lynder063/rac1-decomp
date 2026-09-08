.align 3
/* Handwritten function */
nonmatching func_00118E20, 0x10

glabel func_00118E20
    /* 19DA0 00118E20 77000324 */  addiu      $3, $0, 0x77
    /* 19DA4 00118E24 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19DA8 00118E28 0800E003 */  jr         $31
    /* 19DAC 00118E2C 00000000 */   nop
endlabel func_00118E20
