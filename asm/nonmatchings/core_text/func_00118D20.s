.align 3
/* Handwritten function */
nonmatching func_00118D20, 0x10

glabel func_00118D20
    /* 19CA0 00118D20 56000324 */  addiu      $v1, $zero, 0x56
    /* 19CA4 00118D24 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19CA8 00118D28 0800E003 */  jr         $ra
    /* 19CAC 00118D2C 00000000 */   nop
endlabel func_00118D20
