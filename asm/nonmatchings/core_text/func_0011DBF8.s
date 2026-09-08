.align 3
/* Handwritten function */
nonmatching func_0011DBF8, 0x10

glabel func_0011DBF8
    /* 1EB78 0011DBF8 5A000324 */  addiu      $v1, $zero, 0x5A
    /* 1EB7C 0011DBFC 0C000000 */  syscall    0 /* handwritten instruction */
    /* 1EB80 0011DC00 0800E003 */  jr         $ra
    /* 1EB84 0011DC04 00000000 */   nop
endlabel func_0011DBF8
