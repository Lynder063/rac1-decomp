.align 3
/* Handwritten function */
nonmatching func_00118E80, 0x10

glabel func_00118E80
    /* 19E00 00118E80 7B000324 */  addiu      $3, $0, 0x7B
    /* 19E04 00118E84 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19E08 00118E88 0800E003 */  jr         $31
    /* 19E0C 00118E8C 00000000 */   nop
endlabel func_00118E80
