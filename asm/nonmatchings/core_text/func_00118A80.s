.align 3
/* Handwritten function */
nonmatching func_00118A80, 0x10

glabel func_00118A80
    /* 19A00 00118A80 0C000324 */  addiu      $v1, $zero, 0xC
    /* 19A04 00118A84 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19A08 00118A88 0800E003 */  jr         $ra
    /* 19A0C 00118A8C 00000000 */   nop
endlabel func_00118A80
