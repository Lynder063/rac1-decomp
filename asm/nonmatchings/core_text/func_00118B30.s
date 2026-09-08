.align 3
/* Handwritten function */
nonmatching func_00118B30, 0x10

glabel func_00118B30
    /* 19AB0 00118B30 E6FF0324 */  addiu      $v1, $zero, -0x1A
    /* 19AB4 00118B34 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19AB8 00118B38 0800E003 */  jr         $ra
    /* 19ABC 00118B3C 00000000 */   nop
endlabel func_00118B30
