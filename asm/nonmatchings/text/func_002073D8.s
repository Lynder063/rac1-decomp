.align 3
nonmatching func_002073D8, 0x10

glabel func_002073D8
    /* 108358 002073D8 1400033C */  lui        $v1, %hi(D_0013D4AE)
    /* 10835C 002073DC AED46290 */  lbu        $v0, %lo(D_0013D4AE)($v1)
    /* 108360 002073E0 0800E003 */  jr         $ra
    /* 108364 002073E4 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002073D8
