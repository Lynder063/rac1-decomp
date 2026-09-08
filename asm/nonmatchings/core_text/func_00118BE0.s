.align 3
/* Handwritten function */
nonmatching func_00118BE0, 0x10

glabel func_00118BE0
    /* 19B60 00118BE0 2F000324 */  addiu      $3, $0, 0x2F
    /* 19B64 00118BE4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19B68 00118BE8 0800E003 */  jr         $31
    /* 19B6C 00118BEC 00000000 */   nop
endlabel func_00118BE0
