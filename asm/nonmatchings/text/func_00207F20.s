.align 3
nonmatching func_00207F20, 0x10

glabel func_00207F20
    /* 108EA0 00207F20 1400033C */  lui        $3, %hi(D_0013D4DE)
    /* 108EA4 00207F24 DED46290 */  lbu        $2, %lo(D_0013D4DE)($3)
    /* 108EA8 00207F28 0800E003 */  jr         $31
    /* 108EAC 00207F2C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207F20
