.align 3
/* Handwritten function */
nonmatching func_00118D00, 0x10

glabel func_00118D00
    /* 19C80 00118D00 4E000324 */  addiu      $v1, $zero, 0x4E
    /* 19C84 00118D04 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19C88 00118D08 0800E003 */  jr         $ra
    /* 19C8C 00118D0C 00000000 */   nop
endlabel func_00118D00
