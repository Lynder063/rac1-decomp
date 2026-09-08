.align 3
nonmatching func_002073E8, 0x10

glabel func_002073E8
    /* 108368 002073E8 1400033C */  lui        $v1, %hi(D_0013D4AF)
    /* 10836C 002073EC AFD46290 */  lbu        $v0, %lo(D_0013D4AF)($v1)
    /* 108370 002073F0 0800E003 */  jr         $ra
    /* 108374 002073F4 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002073E8
