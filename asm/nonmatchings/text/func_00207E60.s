.align 3
nonmatching func_00207E60, 0x10

glabel func_00207E60
    /* 108DE0 00207E60 1400033C */  lui        $v1, %hi(D_0013D4C0)
    /* 108DE4 00207E64 C0D46290 */  lbu        $v0, %lo(D_0013D4C0)($v1)
    /* 108DE8 00207E68 0800E003 */  jr         $ra
    /* 108DEC 00207E6C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207E60
