.align 3
nonmatching func_002082F8, 0x10

glabel func_002082F8
    /* 109278 002082F8 1400033C */  lui        $3, %hi(D_0013D503)
    /* 10927C 002082FC 03D56290 */  lbu        $2, %lo(D_0013D503)($3)
    /* 109280 00208300 0800E003 */  jr         $31
    /* 109284 00208304 2B100200 */   sltu      $2, $0, $2
endlabel func_002082F8
