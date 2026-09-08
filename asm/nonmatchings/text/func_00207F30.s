.align 3
nonmatching func_00207F30, 0x10

glabel func_00207F30
    /* 108EB0 00207F30 1400033C */  lui        $3, %hi(D_0013D4DF)
    /* 108EB4 00207F34 DFD46290 */  lbu        $2, %lo(D_0013D4DF)($3)
    /* 108EB8 00207F38 0800E003 */  jr         $31
    /* 108EBC 00207F3C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207F30
