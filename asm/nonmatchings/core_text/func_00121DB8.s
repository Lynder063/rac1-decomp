.align 3
/* Handwritten function */
nonmatching func_00121DB8, 0x10

glabel func_00121DB8
    /* 22D38 00121DB8 80000324 */  addiu      $3, $0, 0x80
    /* 22D3C 00121DBC 0C000000 */  syscall    0 /* handwritten instruction */
    /* 22D40 00121DC0 0800E003 */  jr         $31
    /* 22D44 00121DC4 00000000 */   nop
endlabel func_00121DB8
