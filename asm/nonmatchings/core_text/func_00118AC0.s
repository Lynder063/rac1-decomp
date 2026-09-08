.align 3
/* Handwritten function */
nonmatching func_00118AC0, 0x10

glabel func_00118AC0
    /* 19A40 00118AC0 12000324 */  addiu      $v1, $zero, 0x12
    /* 19A44 00118AC4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19A48 00118AC8 0800E003 */  jr         $ra
    /* 19A4C 00118ACC 00000000 */   nop
endlabel func_00118AC0
