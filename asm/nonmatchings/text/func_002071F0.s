.align 3
nonmatching func_002071F0, 0x10

glabel func_002071F0
    /* 108170 002071F0 1400033C */  lui        $3, %hi(D_0013D4A5)
    /* 108174 002071F4 A5D46290 */  lbu        $2, %lo(D_0013D4A5)($3)
    /* 108178 002071F8 0800E003 */  jr         $31
    /* 10817C 002071FC 2B100200 */   sltu      $2, $0, $2
endlabel func_002071F0
