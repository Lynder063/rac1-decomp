.align 3
/* Handwritten function */
nonmatching func_00118D50, 0x10

glabel func_00118D50
    /* 19CD0 00118D50 5F000324 */  addiu      $3, $0, 0x5F
    /* 19CD4 00118D54 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19CD8 00118D58 0800E003 */  jr         $31
    /* 19CDC 00118D5C 00000000 */   nop
endlabel func_00118D50
