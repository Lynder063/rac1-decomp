.align 3
nonmatching func_0020CC88, 0x2C

glabel func_0020CC88
    /* 10DC08 0020CC88 1400023C */  lui        $2, %hi(D_0013D5C8)
    /* 10DC0C 0020CC8C C8D54224 */  addiu      $2, $2, %lo(D_0013D5C8)
    /* 10DC10 0020CC90 21004390 */  lbu        $3, 0x21($2)
    /* 10DC14 0020CC94 05006050 */  beql       $3, $0, .L0020CCAC
    /* 10DC18 0020CC98 2D100000 */   daddu     $2, $0, $0
    /* 10DC1C 0020CC9C 1F004390 */  lbu        $3, 0x1F($2)
    /* 10DC20 0020CCA0 02006014 */  bnez       $3, .L0020CCAC
    /* 10DC24 0020CCA4 01000224 */   addiu     $2, $0, 0x1
    /* 10DC28 0020CCA8 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CCAC:
    /* 10DC2C 0020CCAC 0800E003 */  jr         $31
    /* 10DC30 0020CCB0 00000000 */   nop
endlabel func_0020CC88
    /* 10DC34 0020CCB4 00000000 */  nop
