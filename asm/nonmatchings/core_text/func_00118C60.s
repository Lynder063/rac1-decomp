.align 3
/* Handwritten function */
nonmatching func_00118C60, 0x10

glabel func_00118C60
    /* 19BE0 00118C60 3E000324 */  addiu      $v1, $zero, 0x3E
    /* 19BE4 00118C64 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19BE8 00118C68 0800E003 */  jr         $ra
    /* 19BEC 00118C6C 00000000 */   nop
endlabel func_00118C60
