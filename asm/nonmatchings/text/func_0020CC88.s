.align 3
nonmatching func_0020CC88, 0x2C

glabel func_0020CC88
    /* 10DC08 0020CC88 1400023C */  lui        $v0, %hi(D_0013D5C8)
    /* 10DC0C 0020CC8C C8D54224 */  addiu      $v0, $v0, %lo(D_0013D5C8)
    /* 10DC10 0020CC90 21004390 */  lbu        $v1, 0x21($v0)
    /* 10DC14 0020CC94 05006050 */  beql       $v1, $zero, .L0020CCAC
    /* 10DC18 0020CC98 2D100000 */   daddu     $v0, $zero, $zero
    /* 10DC1C 0020CC9C 1F004390 */  lbu        $v1, 0x1F($v0)
    /* 10DC20 0020CCA0 02006014 */  bnez       $v1, .L0020CCAC
    /* 10DC24 0020CCA4 01000224 */   addiu     $v0, $zero, 0x1
    /* 10DC28 0020CCA8 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020CCAC:
    /* 10DC2C 0020CCAC 0800E003 */  jr         $ra
    /* 10DC30 0020CCB0 00000000 */   nop
endlabel func_0020CC88
    /* 10DC34 0020CCB4 00000000 */  nop
