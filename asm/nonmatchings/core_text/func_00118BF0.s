.align 3
/* Handwritten function */
nonmatching func_00118BF0, 0x10

glabel func_00118BF0
    /* 19B70 00118BF0 30000324 */  addiu      $v1, $zero, 0x30
    /* 19B74 00118BF4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19B78 00118BF8 0800E003 */  jr         $ra
    /* 19B7C 00118BFC 00000000 */   nop
endlabel func_00118BF0
