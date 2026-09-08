.align 3
nonmatching func_002071D0, 0x10

glabel func_002071D0
    /* 108150 002071D0 1400033C */  lui        $v1, %hi(D_0013D49C)
    /* 108154 002071D4 9CD46290 */  lbu        $v0, %lo(D_0013D49C)($v1)
    /* 108158 002071D8 0800E003 */  jr         $ra
    /* 10815C 002071DC 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002071D0
