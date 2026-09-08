.align 3
nonmatching func_00207E80, 0x10

glabel func_00207E80
    /* 108E00 00207E80 1400033C */  lui        $3, %hi(D_0013D4C2)
    /* 108E04 00207E84 C2D46290 */  lbu        $2, %lo(D_0013D4C2)($3)
    /* 108E08 00207E88 0800E003 */  jr         $31
    /* 108E0C 00207E8C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207E80
