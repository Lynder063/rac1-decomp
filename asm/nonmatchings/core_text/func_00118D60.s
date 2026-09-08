.align 3
/* Handwritten function */
nonmatching func_00118D60, 0x10

glabel func_00118D60
    /* 19CE0 00118D60 61000324 */  addiu      $v1, $zero, 0x61
    /* 19CE4 00118D64 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19CE8 00118D68 0800E003 */  jr         $ra
    /* 19CEC 00118D6C 00000000 */   nop
endlabel func_00118D60
