.align 3
nonmatching func_00207EA0, 0x10

glabel func_00207EA0
    /* 108E20 00207EA0 1400033C */  lui        $v1, %hi(D_0013D4D4)
    /* 108E24 00207EA4 D4D46290 */  lbu        $v0, %lo(D_0013D4D4)($v1)
    /* 108E28 00207EA8 0800E003 */  jr         $ra
    /* 108E2C 00207EAC 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207EA0
