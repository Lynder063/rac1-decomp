.align 3
/* Handwritten function */
nonmatching func_00118BA0, 0x10

glabel func_00118BA0
    /* 19B20 00118BA0 29000324 */  addiu      $v1, $zero, 0x29
    /* 19B24 00118BA4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19B28 00118BA8 0800E003 */  jr         $ra
    /* 19B2C 00118BAC 00000000 */   nop
endlabel func_00118BA0
