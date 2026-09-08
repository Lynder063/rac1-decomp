.align 3
nonmatching func_00207E90, 0x10

glabel func_00207E90
    /* 108E10 00207E90 1400033C */  lui        $v1, %hi(D_0013D4D3)
    /* 108E14 00207E94 D3D46290 */  lbu        $v0, %lo(D_0013D4D3)($v1)
    /* 108E18 00207E98 0800E003 */  jr         $ra
    /* 108E1C 00207E9C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207E90
