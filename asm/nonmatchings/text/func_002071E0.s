.align 3
nonmatching func_002071E0, 0x10

glabel func_002071E0
    /* 108160 002071E0 1400033C */  lui        $3, %hi(D_0013D49D)
    /* 108164 002071E4 9DD46290 */  lbu        $2, %lo(D_0013D49D)($3)
    /* 108168 002071E8 0800E003 */  jr         $31
    /* 10816C 002071EC 2B100200 */   sltu      $2, $0, $2
endlabel func_002071E0
