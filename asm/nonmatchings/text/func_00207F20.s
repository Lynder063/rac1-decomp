.align 3
nonmatching func_00207F20, 0x10

glabel func_00207F20
    /* 108EA0 00207F20 1400033C */  lui        $v1, %hi(D_0013D4DE)
    /* 108EA4 00207F24 DED46290 */  lbu        $v0, %lo(D_0013D4DE)($v1)
    /* 108EA8 00207F28 0800E003 */  jr         $ra
    /* 108EAC 00207F2C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207F20
