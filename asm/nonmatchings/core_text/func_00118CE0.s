.align 3
/* Handwritten function */
nonmatching func_00118CE0, 0x10

glabel func_00118CE0
    /* 19C60 00118CE0 4A000324 */  addiu      $v1, $zero, 0x4A
    /* 19C64 00118CE4 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19C68 00118CE8 0800E003 */  jr         $ra
    /* 19C6C 00118CEC 00000000 */   nop
endlabel func_00118CE0
