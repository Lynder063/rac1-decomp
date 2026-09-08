.align 3
nonmatching func_00208328, 0x10

glabel func_00208328
    /* 1092A8 00208328 1400033C */  lui        $v1, %hi(D_0013D50F)
    /* 1092AC 0020832C 0FD56290 */  lbu        $v0, %lo(D_0013D50F)($v1)
    /* 1092B0 00208330 0800E003 */  jr         $ra
    /* 1092B4 00208334 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00208328
