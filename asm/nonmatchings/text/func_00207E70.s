.align 3
nonmatching func_00207E70, 0x10

glabel func_00207E70
    /* 108DF0 00207E70 1400033C */  lui        $3, %hi(D_0013D4C1)
    /* 108DF4 00207E74 C1D46290 */  lbu        $2, %lo(D_0013D4C1)($3)
    /* 108DF8 00207E78 0800E003 */  jr         $31
    /* 108DFC 00207E7C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207E70
