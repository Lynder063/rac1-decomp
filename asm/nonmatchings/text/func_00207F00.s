.align 3
nonmatching func_00207F00, 0x10

glabel func_00207F00
    /* 108E80 00207F00 1400033C */  lui        $v1, %hi(D_0013D4DC)
    /* 108E84 00207F04 DCD46290 */  lbu        $v0, %lo(D_0013D4DC)($v1)
    /* 108E88 00207F08 0800E003 */  jr         $ra
    /* 108E8C 00207F0C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207F00
