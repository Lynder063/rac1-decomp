.align 3
nonmatching func_0020CD80, 0x24

glabel func_0020CD80
    /* 10DD00 0020CD80 1400023C */  lui        $2, %hi(D_0013D5DD)
    /* 10DD04 0020CD84 DDD54390 */  lbu        $3, %lo(D_0013D5DD)($2)
    /* 10DD08 0020CD88 04006014 */  bnez       $3, .L0020CD9C
    /* 10DD0C 0020CD8C 1400033C */   lui       $3, %hi(D_0013DC34)
    /* 10DD10 0020CD90 34DC628C */  lw         $2, %lo(D_0013DC34)($3)
    /* 10DD14 0020CD94 0800E003 */  jr         $31
    /* 10DD18 0020CD98 2B100200 */   sltu      $2, $0, $2
.align 2
  .L0020CD9C:
    /* 10DD1C 0020CD9C 0800E003 */  jr         $31
    /* 10DD20 0020CDA0 02000224 */   addiu     $2, $0, 0x2
endlabel func_0020CD80
    /* 10DD24 0020CDA4 00000000 */  nop
