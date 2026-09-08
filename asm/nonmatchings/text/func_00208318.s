.align 3
nonmatching func_00208318, 0x10

glabel func_00208318
    /* 109298 00208318 1400033C */  lui        $v1, %hi(D_0013D505)
    /* 10929C 0020831C 05D56290 */  lbu        $v0, %lo(D_0013D505)($v1)
    /* 1092A0 00208320 0800E003 */  jr         $ra
    /* 1092A4 00208324 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00208318
