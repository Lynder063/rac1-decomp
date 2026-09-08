.align 3
/* Handwritten function */
nonmatching func_00118E60, 0x10

glabel func_00118E60
    /* 19DE0 00118E60 79000324 */  addiu      $v1, $zero, 0x79
    /* 19DE4 00118E64 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19DE8 00118E68 0800E003 */  jr         $ra
    /* 19DEC 00118E6C 00000000 */   nop
endlabel func_00118E60
