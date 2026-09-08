.align 3
nonmatching func_002071D0, 0x10

glabel func_002071D0
    /* 108150 002071D0 1400033C */  lui        $3, %hi(D_0013D49C)
    /* 108154 002071D4 9CD46290 */  lbu        $2, %lo(D_0013D49C)($3)
    /* 108158 002071D8 0800E003 */  jr         $31
    /* 10815C 002071DC 2B100200 */   sltu      $2, $0, $2
endlabel func_002071D0
