.align 3
/* Handwritten function */
nonmatching func_00118C00, 0x10

glabel func_00118C00
    /* 19B80 00118C00 32000324 */  addiu      $3, $0, 0x32
    /* 19B84 00118C04 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19B88 00118C08 0800E003 */  jr         $31
    /* 19B8C 00118C0C 00000000 */   nop
endlabel func_00118C00
