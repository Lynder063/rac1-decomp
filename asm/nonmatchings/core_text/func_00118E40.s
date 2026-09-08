.align 3
/* Handwritten function */
nonmatching func_00118E40, 0x10

glabel func_00118E40
    /* 19DC0 00118E40 78000324 */  addiu      $3, $0, 0x78
    /* 19DC4 00118E44 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19DC8 00118E48 0800E003 */  jr         $31
    /* 19DCC 00118E4C 00000000 */   nop
endlabel func_00118E40
