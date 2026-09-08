.align 3
/* Handwritten function */
nonmatching func_00118E90, 0x10

glabel func_00118E90
    /* 19E10 00118E90 7C000324 */  addiu      $3, $0, 0x7C
    /* 19E14 00118E94 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19E18 00118E98 0800E003 */  jr         $31
    /* 19E1C 00118E9C 00000000 */   nop
endlabel func_00118E90
