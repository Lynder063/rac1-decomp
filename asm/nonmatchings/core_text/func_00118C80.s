.align 3
/* Handwritten function */
nonmatching func_00118C80, 0x10

glabel func_00118C80
    /* 19C00 00118C80 41000324 */  addiu      $v1, $zero, 0x41
    /* 19C04 00118C84 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19C08 00118C88 0800E003 */  jr         $ra
    /* 19C0C 00118C8C 00000000 */   nop
endlabel func_00118C80
