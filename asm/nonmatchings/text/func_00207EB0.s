.align 3
nonmatching func_00207EB0, 0x10

glabel func_00207EB0
    /* 108E30 00207EB0 1400033C */  lui        $v1, %hi(D_0013D4D5)
    /* 108E34 00207EB4 D5D46290 */  lbu        $v0, %lo(D_0013D4D5)($v1)
    /* 108E38 00207EB8 0800E003 */  jr         $ra
    /* 108E3C 00207EBC 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207EB0
