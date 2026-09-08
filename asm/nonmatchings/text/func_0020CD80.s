.align 3
nonmatching func_0020CD80, 0x24

glabel func_0020CD80
    /* 10DD00 0020CD80 1400023C */  lui        $v0, %hi(D_0013D5DD)
    /* 10DD04 0020CD84 DDD54390 */  lbu        $v1, %lo(D_0013D5DD)($v0)
    /* 10DD08 0020CD88 04006014 */  bnez       $v1, .L0020CD9C
    /* 10DD0C 0020CD8C 1400033C */   lui       $v1, %hi(D_0013DC34)
    /* 10DD10 0020CD90 34DC628C */  lw         $v0, %lo(D_0013DC34)($v1)
    /* 10DD14 0020CD94 0800E003 */  jr         $ra
    /* 10DD18 0020CD98 2B100200 */   sltu      $v0, $zero, $v0
.align 2
  .L0020CD9C:
    /* 10DD1C 0020CD9C 0800E003 */  jr         $ra
    /* 10DD20 0020CDA0 02000224 */   addiu     $v0, $zero, 0x2
endlabel func_0020CD80
    /* 10DD24 0020CDA4 00000000 */  nop
