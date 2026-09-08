.align 3
nonmatching func_002073F8, 0x10

glabel func_002073F8
    /* 108378 002073F8 1400033C */  lui        $3, %hi(D_0013D4B5)
    /* 10837C 002073FC B5D46290 */  lbu        $2, %lo(D_0013D4B5)($3)
    /* 108380 00207400 0800E003 */  jr         $31
    /* 108384 00207404 2B100200 */   sltu      $2, $0, $2
endlabel func_002073F8
