.align 3
/* Handwritten function */
nonmatching func_00118B70, 0x10

glabel func_00118B70
    /* 19AF0 00118B70 22000324 */  addiu      $v1, $zero, 0x22
    /* 19AF4 00118B74 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19AF8 00118B78 0800E003 */  jr         $ra
    /* 19AFC 00118B7C 00000000 */   nop
endlabel func_00118B70
