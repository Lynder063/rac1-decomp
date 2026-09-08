.align 3
nonmatching func_0020CDA8, 0x10

glabel func_0020CDA8
    /* 10DD28 0020CDA8 1400033C */  lui        $v1, %hi(D_0013D5E7)
    /* 10DD2C 0020CDAC E7D56290 */  lbu        $v0, %lo(D_0013D5E7)($v1)
    /* 10DD30 0020CDB0 0800E003 */  jr         $ra
    /* 10DD34 0020CDB4 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_0020CDA8
