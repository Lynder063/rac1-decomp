.align 3
/* Handwritten function */
nonmatching func_00118DC0, 0x10

glabel func_00118DC0
    /* 19D40 00118DC0 6F000324 */  addiu      $3, $0, 0x6F
    /* 19D44 00118DC4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19D48 00118DC8 0800E003 */  jr         $31
    /* 19D4C 00118DCC 00000000 */   nop
endlabel func_00118DC0
