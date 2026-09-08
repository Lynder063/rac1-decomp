.align 3
/* Handwritten function */
nonmatching func_00118E70, 0x10

glabel func_00118E70
    /* 19DF0 00118E70 7A000324 */  addiu      $3, $0, 0x7A
    /* 19DF4 00118E74 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19DF8 00118E78 0800E003 */  jr         $31
    /* 19DFC 00118E7C 00000000 */   nop
endlabel func_00118E70
