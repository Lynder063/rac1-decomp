.align 3
/* Handwritten function */
nonmatching func_00118D80, 0x10

glabel func_00118D80
    /* 19D00 00118D80 64000324 */  addiu      $v1, $zero, 0x64
    /* 19D04 00118D84 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19D08 00118D88 0800E003 */  jr         $ra
    /* 19D0C 00118D8C 00000000 */   nop
endlabel func_00118D80
