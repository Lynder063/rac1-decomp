.align 3
nonmatching func_00208308, 0x10

glabel func_00208308
    /* 109288 00208308 1400033C */  lui        $v1, %hi(D_0013D504)
    /* 10928C 0020830C 04D56290 */  lbu        $v0, %lo(D_0013D504)($v1)
    /* 109290 00208310 0800E003 */  jr         $ra
    /* 109294 00208314 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00208308
