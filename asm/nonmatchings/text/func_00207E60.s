.align 3
nonmatching func_00207E60, 0x10

glabel func_00207E60
    /* 108DE0 00207E60 1400033C */  lui        $3, %hi(D_0013D4C0)
    /* 108DE4 00207E64 C0D46290 */  lbu        $2, %lo(D_0013D4C0)($3)
    /* 108DE8 00207E68 0800E003 */  jr         $31
    /* 108DEC 00207E6C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207E60
