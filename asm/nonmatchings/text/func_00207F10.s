.align 3
nonmatching func_00207F10, 0x10

glabel func_00207F10
    /* 108E90 00207F10 1400033C */  lui        $v1, %hi(D_0013D4DD)
    /* 108E94 00207F14 DDD46290 */  lbu        $v0, %lo(D_0013D4DD)($v1)
    /* 108E98 00207F18 0800E003 */  jr         $ra
    /* 108E9C 00207F1C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207F10
