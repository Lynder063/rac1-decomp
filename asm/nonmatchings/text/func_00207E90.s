.align 3
nonmatching func_00207E90, 0x10

glabel func_00207E90
    /* 108E10 00207E90 1400033C */  lui        $3, %hi(D_0013D4D3)
    /* 108E14 00207E94 D3D46290 */  lbu        $2, %lo(D_0013D4D3)($3)
    /* 108E18 00207E98 0800E003 */  jr         $31
    /* 108E1C 00207E9C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207E90
