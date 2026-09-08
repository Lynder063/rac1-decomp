.align 3
nonmatching func_00207EB0, 0x10

glabel func_00207EB0
    /* 108E30 00207EB0 1400033C */  lui        $3, %hi(D_0013D4D5)
    /* 108E34 00207EB4 D5D46290 */  lbu        $2, %lo(D_0013D4D5)($3)
    /* 108E38 00207EB8 0800E003 */  jr         $31
    /* 108E3C 00207EBC 2B100200 */   sltu      $2, $0, $2
endlabel func_00207EB0
