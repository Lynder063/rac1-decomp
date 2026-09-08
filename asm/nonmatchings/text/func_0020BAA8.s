.align 3
nonmatching func_0020BAA8, 0x30

glabel func_0020BAA8
    /* 10CA28 0020BAA8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10CA2C 0020BAAC 0000BF7F */  sq         $ra, 0x0($sp)
    /* 10CA30 0020BAB0 BC8D040C */  jal        func_001236F0
    /* 10CA34 0020BAB4 00000000 */   nop
    /* 10CA38 0020BAB8 05004010 */  beqz       $v0, .L0020BAD0
    /* 10CA3C 0020BABC 0000BF7B */   lq        $ra, 0x0($sp)
    /* 10CA40 0020BAC0 1F00043C */  lui        $a0, %hi(D_001E8690)
    /* 10CA44 0020BAC4 CCA5070C */  jal        func_001E9730
    /* 10CA48 0020BAC8 90868424 */   addiu     $a0, $a0, %lo(D_001E8690)
    /* 10CA4C 0020BACC 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L0020BAD0:
    /* 10CA50 0020BAD0 0800E003 */  jr         $ra
    /* 10CA54 0020BAD4 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0020BAA8
