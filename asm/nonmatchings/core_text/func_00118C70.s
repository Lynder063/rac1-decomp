.align 3
/* Handwritten function */
nonmatching func_00118C70, 0x10

glabel func_00118C70
    /* 19BF0 00118C70 40000324 */  addiu      $v1, $zero, 0x40
    /* 19BF4 00118C74 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19BF8 00118C78 0800E003 */  jr         $ra
    /* 19BFC 00118C7C 00000000 */   nop
endlabel func_00118C70
