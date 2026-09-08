.align 3
/* Handwritten function */
nonmatching func_00118C10, 0x10

glabel func_00118C10
    /* 19B90 00118C10 33000324 */  addiu      $v1, $zero, 0x33
    /* 19B94 00118C14 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19B98 00118C18 0800E003 */  jr         $ra
    /* 19B9C 00118C1C 00000000 */   nop
endlabel func_00118C10
