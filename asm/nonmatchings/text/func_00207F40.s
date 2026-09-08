.align 3
nonmatching func_00207F40, 0x10

glabel func_00207F40
    /* 108EC0 00207F40 1400033C */  lui        $v1, %hi(D_0013D4E1)
    /* 108EC4 00207F44 E1D46290 */  lbu        $v0, %lo(D_0013D4E1)($v1)
    /* 108EC8 00207F48 0800E003 */  jr         $ra
    /* 108ECC 00207F4C 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_00207F40
