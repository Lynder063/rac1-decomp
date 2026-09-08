.align 3
nonmatching func_002082E8, 0x10

glabel func_002082E8
    /* 109268 002082E8 1400033C */  lui        $v1, %hi(D_0013D502)
    /* 10926C 002082EC 02D56290 */  lbu        $v0, %lo(D_0013D502)($v1)
    /* 109270 002082F0 0800E003 */  jr         $ra
    /* 109274 002082F4 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002082E8
