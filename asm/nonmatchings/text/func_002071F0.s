.align 3
nonmatching func_002071F0, 0x10

glabel func_002071F0
    /* 108170 002071F0 1400033C */  lui        $v1, %hi(D_0013D4A5)
    /* 108174 002071F4 A5D46290 */  lbu        $v0, %lo(D_0013D4A5)($v1)
    /* 108178 002071F8 0800E003 */  jr         $ra
    /* 10817C 002071FC 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002071F0
