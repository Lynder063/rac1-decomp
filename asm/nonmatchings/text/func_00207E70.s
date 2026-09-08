.align 3
nonmatching func_00207E70, 0x10

glabel func_00207E70
    /* 108DF0 00207E70 1400033C */  lui        $v1, %hi(D_0013D4C1)
    /* 108DF4 00207E74 C1D46290 */  lbu        $v0, %lo(D_0013D4C1)($v1)
    /* 108DF8 00207E78 0800E003 */  jr         $ra
    /* 108DFC 00207E7C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207E70
