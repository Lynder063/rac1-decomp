.align 3
nonmatching func_002073C8, 0x10

glabel func_002073C8
    /* 108348 002073C8 1400033C */  lui        $3, %hi(D_0013D4AD)
    /* 10834C 002073CC ADD46290 */  lbu        $2, %lo(D_0013D4AD)($3)
    /* 108350 002073D0 0800E003 */  jr         $31
    /* 108354 002073D4 2B100200 */   sltu      $2, $0, $2
endlabel func_002073C8
