.align 3
/* Handwritten function */
nonmatching func_00118B20, 0x10

glabel func_00118B20
    /* 19AA0 00118B20 FC000324 */  addiu      $v1, $zero, 0xFC
    /* 19AA4 00118B24 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19AA8 00118B28 0800E003 */  jr         $ra
    /* 19AAC 00118B2C 00000000 */   nop
endlabel func_00118B20
