.align 3
/* Handwritten function */
nonmatching func_00118B60, 0x10

glabel func_00118B60
    /* 19AE0 00118B60 21000324 */  addiu      $v1, $zero, 0x21
    /* 19AE4 00118B64 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19AE8 00118B68 0800E003 */  jr         $ra
    /* 19AEC 00118B6C 00000000 */   nop
endlabel func_00118B60
