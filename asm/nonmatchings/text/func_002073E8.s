.align 3
nonmatching func_002073E8, 0x10

glabel func_002073E8
    /* 108368 002073E8 1400033C */  lui        $3, %hi(D_0013D4AF)
    /* 10836C 002073EC AFD46290 */  lbu        $2, %lo(D_0013D4AF)($3)
    /* 108370 002073F0 0800E003 */  jr         $31
    /* 108374 002073F4 2B100200 */   sltu      $2, $0, $2
endlabel func_002073E8
