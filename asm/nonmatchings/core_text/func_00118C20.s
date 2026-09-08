.align 3
/* Handwritten function */
nonmatching func_00118C20, 0x10

glabel func_00118C20
    /* 19BA0 00118C20 CCFF0324 */  addiu      $3, $0, -0x34
    /* 19BA4 00118C24 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19BA8 00118C28 0800E003 */  jr         $31
    /* 19BAC 00118C2C 00000000 */   nop
endlabel func_00118C20
