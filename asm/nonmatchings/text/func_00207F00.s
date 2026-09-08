.align 3
nonmatching func_00207F00, 0x10

glabel func_00207F00
    /* 108E80 00207F00 1400033C */  lui        $3, %hi(D_0013D4DC)
    /* 108E84 00207F04 DCD46290 */  lbu        $2, %lo(D_0013D4DC)($3)
    /* 108E88 00207F08 0800E003 */  jr         $31
    /* 108E8C 00207F0C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207F00
