.align 3
nonmatching func_002082E8, 0x10

glabel func_002082E8
    /* 109268 002082E8 1400033C */  lui        $3, %hi(D_0013D502)
    /* 10926C 002082EC 02D56290 */  lbu        $2, %lo(D_0013D502)($3)
    /* 109270 002082F0 0800E003 */  jr         $31
    /* 109274 002082F4 2B100200 */   sltu      $2, $0, $2
endlabel func_002082E8
