.align 3
/* Handwritten function */
nonmatching func_0011DC40, 0x10

glabel func_0011DC40
    /* 1EBC0 0011DC40 5B000324 */  addiu      $v1, $zero, 0x5B
    /* 1EBC4 0011DC44 0C000000 */  syscall    0 /* handwritten instruction */
    /* 1EBC8 0011DC48 0800E003 */  jr         $ra
    /* 1EBCC 0011DC4C 00000000 */   nop
endlabel func_0011DC40
