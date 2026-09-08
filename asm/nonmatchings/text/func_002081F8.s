.align 3
nonmatching func_002081F8, 0x10

glabel func_002081F8
    /* 109178 002081F8 1400033C */  lui        $v1, %hi(D_0013D4E9)
    /* 10917C 002081FC E9D46290 */  lbu        $v0, %lo(D_0013D4E9)($v1)
    /* 109180 00208200 0800E003 */  jr         $ra
    /* 109184 00208204 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_002081F8
