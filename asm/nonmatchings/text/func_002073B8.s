.align 3
nonmatching func_002073B8, 0x10

glabel func_002073B8
    /* 108338 002073B8 1400033C */  lui        $3, %hi(D_0013D4AC)
    /* 10833C 002073BC ACD46290 */  lbu        $2, %lo(D_0013D4AC)($3)
    /* 108340 002073C0 0800E003 */  jr         $31
    /* 108344 002073C4 2B100200 */   sltu      $2, $0, $2
endlabel func_002073B8
