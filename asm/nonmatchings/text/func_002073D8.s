.align 3
nonmatching func_002073D8, 0x10

glabel func_002073D8
    /* 108358 002073D8 1400033C */  lui        $3, %hi(D_0013D4AE)
    /* 10835C 002073DC AED46290 */  lbu        $2, %lo(D_0013D4AE)($3)
    /* 108360 002073E0 0800E003 */  jr         $31
    /* 108364 002073E4 2B100200 */   sltu      $2, $0, $2
endlabel func_002073D8
