.align 3
nonmatching func_00207F30, 0x10

glabel func_00207F30
    /* 108EB0 00207F30 1400033C */  lui        $v1, %hi(D_0013D4DF)
    /* 108EB4 00207F34 DFD46290 */  lbu        $v0, %lo(D_0013D4DF)($v1)
    /* 108EB8 00207F38 0800E003 */  jr         $ra
    /* 108EBC 00207F3C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207F30
