.align 3
nonmatching func_00207EA0, 0x10

glabel func_00207EA0
    /* 108E20 00207EA0 1400033C */  lui        $3, %hi(D_0013D4D4)
    /* 108E24 00207EA4 D4D46290 */  lbu        $2, %lo(D_0013D4D4)($3)
    /* 108E28 00207EA8 0800E003 */  jr         $31
    /* 108E2C 00207EAC 2B100200 */   sltu      $2, $0, $2
endlabel func_00207EA0
