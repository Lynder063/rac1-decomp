.align 3
nonmatching func_002073F8, 0x10

glabel func_002073F8
    /* 108378 002073F8 1400033C */  lui        $v1, %hi(D_0013D4B5)
    /* 10837C 002073FC B5D46290 */  lbu        $v0, %lo(D_0013D4B5)($v1)
    /* 108380 00207400 0800E003 */  jr         $ra
    /* 108384 00207404 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002073F8
