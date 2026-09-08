.align 3
/* Handwritten function */
nonmatching func_0011DA80, 0x10

glabel func_0011DA80
    /* 1EA00 0011DA80 83000324 */  addiu      $3, $0, 0x83
    /* 1EA04 0011DA84 0C000000 */  syscall    0 /* handwritten instruction */
    /* 1EA08 0011DA88 0800E003 */  jr         $31
    /* 1EA0C 0011DA8C 00000000 */   nop
endlabel func_0011DA80
