.align 3
/* Handwritten function */
nonmatching func_00118E00, 0x10

glabel func_00118E00
    /* 19D80 00118E00 73000324 */  addiu      $v1, $zero, 0x73
    /* 19D84 00118E04 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19D88 00118E08 0800E003 */  jr         $ra
    /* 19D8C 00118E0C 00000000 */   nop
endlabel func_00118E00
