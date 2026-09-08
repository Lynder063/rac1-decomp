.align 3
nonmatching func_0020BB88, 0x3C

glabel func_0020BB88
    /* 10CB08 0020BB88 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 10CB0C 0020BB8C 2D100000 */  daddu      $2, $0, $0
    /* 10CB10 0020BB90 1000BF7F */  sq         $31, 0x10($29)
    /* 10CB14 0020BB94 0000B07F */  sq         $16, 0x0($29)
    /* 10CB18 0020BB98 0400908C */  lw         $16, 0x4($4)
    /* 10CB1C 0020BB9C 05000012 */  beqz       $16, .L0020BBB4
    /* 10CB20 0020BBA0 0000858C */   lw        $5, 0x0($4)
    /* 10CB24 0020BBA4 C42E080C */  jal        func_0020BB10
    /* 10CB28 0020BBA8 08008424 */   addiu     $4, $4, 0x8
    /* 10CB2C 0020BBAC 26105000 */  xor        $2, $2, $16
    /* 10CB30 0020BBB0 0100422C */  sltiu      $2, $2, 0x1
.align 2
  .L0020BBB4:
    /* 10CB34 0020BBB4 1000BF7B */  lq         $31, 0x10($29)
    /* 10CB38 0020BBB8 0000B07B */  lq         $16, 0x0($29)
    /* 10CB3C 0020BBBC 0800E003 */  jr         $31
    /* 10CB40 0020BBC0 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0020BB88
    /* 10CB44 0020BBC4 00000000 */  nop
