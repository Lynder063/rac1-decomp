.align 3
/* Handwritten function */
nonmatching func_00118D70, 0x10

glabel func_00118D70
    /* 19CF0 00118D70 62000324 */  addiu      $v1, $zero, 0x62
    /* 19CF4 00118D74 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19CF8 00118D78 0800E003 */  jr         $ra
    /* 19CFC 00118D7C 00000000 */   nop
endlabel func_00118D70
