.align 3
/* Handwritten function */
nonmatching func_00118AF0, 0x10

glabel func_00118AF0
    /* 19A70 00118AF0 15000324 */  addiu      $v1, $zero, 0x15
    /* 19A74 00118AF4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19A78 00118AF8 0800E003 */  jr         $ra
    /* 19A7C 00118AFC 00000000 */   nop
endlabel func_00118AF0
