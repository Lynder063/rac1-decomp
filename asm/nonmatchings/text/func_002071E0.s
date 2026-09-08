.align 3
nonmatching func_002071E0, 0x10

glabel func_002071E0
    /* 108160 002071E0 1400033C */  lui        $v1, %hi(D_0013D49D)
    /* 108164 002071E4 9DD46290 */  lbu        $v0, %lo(D_0013D49D)($v1)
    /* 108168 002071E8 0800E003 */  jr         $ra
    /* 10816C 002071EC 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002071E0
