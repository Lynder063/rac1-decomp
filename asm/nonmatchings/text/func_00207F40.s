.align 3
nonmatching func_00207F40, 0x10

glabel func_00207F40
    /* 108EC0 00207F40 1400033C */  lui        $3, %hi(D_0013D4E1)
    /* 108EC4 00207F44 E1D46290 */  lbu        $2, %lo(D_0013D4E1)($3)
    /* 108EC8 00207F48 0800E003 */  jr         $31
    /* 108ECC 00207F4C 2B100200 */   sltu      $2, $0, $2
endlabel func_00207F40
