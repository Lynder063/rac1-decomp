.align 3
/* Handwritten function */
nonmatching func_00118E30, 0x10

glabel func_00118E30
    /* 19DB0 00118E30 89FF0324 */  addiu      $v1, $zero, -0x77
    /* 19DB4 00118E34 0C000000 */  syscall    0 /* handwritten instruction */
    /* 19DB8 00118E38 0800E003 */  jr         $ra
    /* 19DBC 00118E3C 00000000 */   nop
endlabel func_00118E30
